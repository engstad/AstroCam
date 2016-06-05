`timescale 1ns / 1ps
// `default net_type none

module clockout(input I, output O);

   ODDR2 #(.DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
		   .INIT(1'b1),            // Sets initial state of the Q output to 1'b0 or 1'b1
		   .SRTYPE("SYNC")         // Specifies "SYNC" or "ASYNC" set/reset
   ) oddr2_inst (.Q(oddr2),
				 .C0(I),   // 1-bit clock input
				 .C1(~I),  // 1-bit clock input
				 .CE(1'b1), // 1-bit clock enable input
				 .D0(1'b1), // 1-bit data input (associated with C0)
				 .D1(1'b0), // 1-bit data input (associated with C1)
				 .R(1'b0),  // 1-bit reset input
				 .S(1'b0)   // 1-bit set input
				 );

   OBUF h1_obuf(.I(oddr2), .O(out));

   assign O = out;
   
endmodule // clockout

//
//       +---------------+
//    ---|> clk     rst  |<----
//    ---|> sclk         |
//    -->|  mosi    dmts |<==== 16
//    --<|  miso    dstm |>==== 16
//    -->|  ssel    done |>----    High if one word has exchanged
//       +---------------+
//
module spi_slave(input 		   clk,  // FPGA clock
				 input 		   sclk, // Serial clock
				 input 		   mosi, // Master out/slave in
				 output 	   miso, // Master in/slave out
				 input 		   ssel, // Serial select (active low)
				 output 	   done, // If communication is done
				 input [15:0]  dstm, // Data in  :from FPGA(slave) to master
				 output [15:0] dmts, // Data out :from master to FPGA (slave)
				 input 		   rst   // Reset module
				 );

   //
   // The convention for D-flip flop is that D is the input and Q is the output, so we'll separate
   // it the same way.
   //

   reg 						 sclk_d, sclk_q;
   reg 						 mosi_d, mosi_q;
   reg 						 miso_d, miso_q;
   reg 						 ssel_d, ssel_q;
   
   reg 						 pclk_d, pclk_q;     // Prev sclk.
   reg [15:0] 				 dstm_d, dstm_q;     // Data slave->master shift-register
   reg [15:0] 				 dmts_q, dmts_d;     // Data master->slave shift-register
   reg [3:0] 				 bitcnt_q, bitcnt_d;
   reg 						 done_d, done_q;

   //
   // Combinatorics: Y = G(Q)
   //
   assign miso = miso_q;
   assign done = done_q;
   assign dmts = dmts_q;

   //
   // State input combinatorics (D input selection), as D = F(input, Q)
   // 
   always @(*) begin
		ssel_d = ssel;
		mosi_d = mosi;
		sclk_d = sclk;
		pclk_d = sclk_q;
		dstm_d = dstm_q;
		done_d = 1'b0;
		bitcnt_d = bitcnt_q;
		dmts_d = dmts_q;
		if (ssel_q) 
		  begin   
			 // If high, we are deselected
			 bitcnt_d = 4'b0;
			 dstm_d = dstm;
			 miso_d = dstm_q[15];
		  end
		else 
		  begin 
			 // If low, we are selected
			 if (!pclk_q && sclk_q) 
			   begin
				  // Rising edge
				  dstm_d = { dstm_q[14:0], 1'b0 }; 
				  bitcnt_d = bitcnt_q + 4'b1;
				  if (bitcnt_q == 4'b1111) 
					begin
					   // Last bit
					   dmts_d = { dstm_q[14:0], mosi_q };
					   done_d = 1'b1;
					   dstm_d = dstm;
					end			
			   end // if (!pclk_q && sclk_q)
			 else if (pclk_q && !sclk_q) 
			   begin 
				  // Falling edge
				  miso_d = dstm_q[15];
			   end
		  end
   end

   //
   // State output propagation: Q <= S(reset, D)
   //
   always @(posedge clk)
	 begin
		// On reset we must initialize our state (bitcnt) and outputs
		if (rst) begin
		   done_q <= 1'b0;      // We're not done if we are reset
		   bitcnt_q <= 4'b0;    // Resetting bit counts
		   dmts_q <= 16'b0;     // Initialize our output word
		   miso_q <= 1'b1;		// Should probably be 1'bz instead
		end else begin
		   done_q <= done_d;
		   bitcnt_q <= bitcnt_d;
		   dmts_q <= dmts_d;
		   miso_q <= miso_d;		   
		end; // else: !if(rst)
		sclk_q <= sclk_d;
		mosi_q <= mosi_d;
		ssel_q <= ssel_d;
		dstm_q <= dstm_d;
		pclk_q <= pclk_d;		
	 end // always @ (posedge clk)

endmodule // spi_slave

//
// Master sends out address and we respond with the data, using a memory interface
//
module spi_mem(input         rst, // Reset module				 
			   input 		 clk, // FPGA clock
			   // SPI HW interface
			   input 		 sclk, // Serial clock
			   input 		 mosi, // Master out/slave in
			   output 		 miso, // Master in/slave out
			   input 		 ssel, // Serial select (active low)
			   // Memory interface
			   output [11:0] addr,
			   input [15:0]  data
			   );

   reg [11:0] 				 addr_q, addr_d;
   reg [15:0] 				 data_q, data_d;

   wire [15:0] 				 dmts; 				 
   
   spi_slave spi(.clk(clk), .rst(rst), .sclk(sclk), .mosi(mosi), .miso(miso), .ssel(ssel),
				 .done(done), .dstm(data_q), .dmts(dmts));

   assign addr = addr_q;   
   
   always @(*) begin
	  addr_d <= addr_q;
	  data_d <= data_q;
	  
	  if (done) begin
		 addr_d <= dmts[11:0]; // assuming 12-bit addresses
		 data_d <= data;
	  end
   end
   
   always @(posedge clk) begin
	  if (rst) begin
		 data_q <= 16'b0;
		 addr_q <= 12'b0;		 
	  end else begin
		 data_q <= data_d;
		 addr_q <= addr_d;		 
	  end
   end
   
endmodule // spi_mem

//
// A parameterized, inferable, true dual-port, dual-clock block RAM in Verilog.
//
module bram_tdp 
  #(parameter DATA = 72,
	parameter ADDR = 10) (// Port A
						  input wire 			a_clk,
						  input wire 			a_wre,
						  input wire [ADDR-1:0] a_addr,
						  input wire [DATA-1:0] a_din,
						  output reg [DATA-1:0] a_dout, 
						  // Port B
						  input wire 			b_clk,
						  input wire 			b_wre,
						  input wire [ADDR-1:0] b_addr,
						  input wire [DATA-1:0] b_din,
						  output reg [DATA-1:0] b_dout
	);
   
   // Shared memory
   reg [DATA-1:0] 								mem [(2**ADDR)-1:0];

   // Initialize to 0
   integer 										i;	  
   initial begin
      for (i=0; i < (2**ADDR)-1; i=i+1) begin
		 mem[i] = 0;		 
	  end
   end

   // Each port:
   //
   //       +-------+
   //  ---->|> clk  |
   //  --A->| addr  |
   //  --D->| din   |
   //  ---->| wre   |
   //  <-D--| dout  |
   //       +-------+
   //
   // On every positive clock edge, `dout` is the memory at address `addr`.
   // If wre is HIGH, instead `dout` := `din` and memory is set to `din`.
   //
   
   // Port A
   always @(posedge a_clk) begin	  
	  a_dout <= mem[a_addr];	  
	  if (a_wre) begin
		 a_dout      <= a_din;		 
		 mem[a_addr] <= a_din;		 
	  end
   end

   // Port B
   always @(posedge b_clk) begin
	  b_dout <= mem[b_addr];	  
	  if (b_wre) begin
		 b_dout      <= b_din;		 
		 mem[b_addr] <= b_din;		 
	  end
   end   
endmodule


module main(input  fpgaClk_i,
			output io_xvt1,
			output io_xvt2,
			output io_xvt3,
			output io_xvt4,
			output io_yvt2,
			output io_yvt3,
			output io_h1,
			output io_h2,
			output io_hl,
			output io_rg,
			output io_thsub,
			output io_clock,
			input  io_a0p,
			input  io_a0n,
			input  io_a1p,
			input  io_a1n,
			input  io_t0p,
			input  io_t0n,
			input  io_b0p,
			input  io_b0n,
			input  io_b1p,
			input  io_b1n,
			input  io_spi_sclk,
			input  io_spi_mosi,
			output io_spi_miso,
			input  io_spi_ssel,
			input  io_reset,
			input  io_enable
			);
	 
   // m/d 12 MHz = 54 MHz => d = 2, m = 9, 
   // m/d 12 MHz =  6 MHz => d = 4, m = 2 
   DCM_SP #(.CLKFX_DIVIDE(2), .CLKFX_MULTIPLY(9)) dcm(.CLKIN(fpgaClk_i), .CLKFX(clkfx), .RST(1'b0),
													  .CLK0(), .CLK90(), .CLK180(), .CLK270(), .CLK2X(), .CLK2X180(),
													  .CLKDV(), .CLKFX180(clkfx180), .LOCKED(), .PSDONE(), .STATUS(),
													  .CLKFB(), .DSSEN(), .PSCLK(), .PSEN(1'b0), .PSINCDEC());         
   icx icx(.clk(clkfx),
		   .reset(io_reset),
		   .xvt1(io_xvt1),
		   .xvt2(io_xvt2),
		   .xvt3(io_xvt3),
		   .xvt4(io_xvt4),
		   .rvt2(vt2h),
		   .rvt3(vt3h),
		   .hblank(hblank),
		   .cob(),
		   // .cob(clpob),
		   .thsub(thsub));
   
   BUFGCE_1 h1_inst(.I(clkfx), .CE(~hblank), .O(h1));   
   BUFGCE   h2_inst(.I(clkfx180), .CE(~hblank), .O(h2));
   BUFG     clk_inst(.I(clkfx), .O(clk));   

   clockout h1_clkout(.I(h1), .O(io_h1));
   clockout hl_clkout(.I(h1), .O(io_hl));   
   clockout h2_clkout(.I(h2), .O(io_h2));
   clockout rg_clkout(.I(h2), .O(io_rg));   
   clockout clk_clkout(.I(clk), .O(io_clock));

   //
   // Deserialization of 4:1 LVDS data.
   //    
   // Clock is 54 MHz.
   //   - DOUT0_A: LSByte of CH A
   //   - DOUT1_A: MSByte of CH A
   //   - DOUT0_B: LSByte of CH B
   //   - DOUT1_B: MSByte of CH B
   //   - TCLOCK
   //
   // For one byte channel: 8x54 = 432 Mbits/sec
   // 
   //
   // 
   //
   //
   //              _______________                 _
   //  CLI:      _/               \_______________/
   //              ___     ___     ___     ___     _
   //  TCLK:     _/   \___/   \___/   \___/   \___/
   //
   //  DOUT0_A:  <             CH A LSB           X
   //  DOUT1_A:  <             CH A MSB           X
   //  DOUT0_B:  <             CH B LSB           X
   //  DOUT1_B:  <             CH B LSB           X
   //
   //              ___     ___     ___     ___     _
   //  TCLK:     _/   \___/   \___/   \___/   \___/
   //             |   |   |   |   |   |   |   |   :
   //  DOUT0_X: <b15|b14|b13|b12|b11|b10|b09|b08>---
   //  DOUT1_X: <b07|b06|b05|b04|b03|b02|b01|b00>---
   //
   //  This is Double Data Rate (DDR).
   //
   //  The serdes factor is 8, with bus output 4 x 8 = 32 lanes.
   //  
   
   wire [31:0] 	   lvds_data; // Bit 31..16 is channel 1, bit 15..0 is channel 0, I think...
   wire 		   lvds_clk;
   reg [11:0] 	   lvds_addr;
						  
   top_nto1_ddr_diff_rx #(.S(8), .D(4)) 
   rx(.reset(1'b0), 
	  .datain_p({io_a0p, io_a1p, io_b0p, io_b1p}),
	  .datain_n({io_a0n, io_a1n, io_b0n, io_b1n}),
	  .clkin_p(io_t0p),
	  .clkin_n(io_t0n),
	  .dataout(lvds_data),
	  .dataclk(lvds_clk));

   // 1536 x 1024 = 1.5 MB, 2 MB => 21 address bits...

   wire [11:0] 	   spi_addr;
   wire [15:0] 	   spi_data;
   
   bram_tdp #(.DATA(16), .ADDR(12)) mem(.a_clk(lvds_clk), .a_wre(1'b1), .a_addr(lvds_addr), .a_din(lvds_data[15:0]), .a_dout(),
                                        .b_clk(clkfx), .b_wre(1'b0), .b_addr(spi_addr), .b_din(), .b_dout(spi_data));

   always @(posedge lvds_clk) begin
	  lvds_addr <= lvds_addr + 12'b1;	  
   end
      
   spi_mem spi(.rst(io_reset),
			   .clk(clkfx),			   
			   //
			   .sclk(io_spi_sclk),
			   .mosi(io_spi_mosi),
			   .miso(io_spi_miso),
			   .ssel(io_spi_ssel),
			   //
			   .addr(spi_addr),
			   .data(spi_data)
			   );
         
   assign io_thsub = ~thsub;
   
   assign io_yvt2 = ~vt2h;
   assign io_yvt3 = ~vt3h;

`ifdef IVERILOG
   $attribute(io_clock, "PAD", "c16");

   $attribute(io_spi_ssel, "PAD", "c15");   
   $attribute(io_spi_mosi, "PAD", "b16");
   $attribute(io_spi_miso, "PAD", "b15");
   $attribute(io_spi_sclk, "PAD", "f16");
`endif   
   
endmodule
