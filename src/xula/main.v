`timescale 1ns / 1ps

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
			output io_ping
			);
	 
   // m/d 12 MHz = 54 MHz => d = 2, m = 9, 
   // m/d 12 MHz =  6 MHz => d = 4, m = 2 
   DCM_SP #(.CLKFX_DIVIDE(2), .CLKFX_MULTIPLY(9)) dcm(.CLKIN(fpgaClk_i), .CLKFX(clkfx), .RST(1'b0),
													  .CLK0(), .CLK90(), .CLK180(), .CLK270(), .CLK2X(), .CLK2X180(),
													  .CLKDV(), .CLKFX180(clkfx180), .LOCKED(), .PSDONE(), .STATUS(),
													  .CLKFB(), .DSSEN(), .PSCLK(), .PSEN(1'b0), .PSINCDEC());         
   icx icx(.clk(clkfx),
		   .reset(1'b0),
		   .xvt1(io_xvt1),
		   .xvt2(io_xvt2),
		   .xvt3(io_xvt3),
		   .xvt4(io_xvt4),
		   .rvt2(vt2h),
		   .rvt3(vt3h),
		   .hblank(hblank),		   
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
   // Clock is 54 MHz, data is 16 bits per clock, split on 4 bits per lane. 
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
   //  DOUT1_X: <b07|b06|b05|b04|b03|b02|b01|b01>---
   //
   //  This is Double Data Rate (DDR).
   //
   //  The serdes factor is 8, with bus output 4 x 8 = 32 lanes.
   //  
   
   wire [3:0] 	   datain_p = {io_a0p, io_a1p, io_b0p, io_b1p};
   wire [3:0] 	   datain_n = {io_a0n, io_a1n, io_b0n, io_b1n};
   reg [15:0] 	   channel[1:0];
   wire [31:0] 	   dataout = { channel[0], channel[1] };
						  
   top_nto1_ddr_diff_rx #(.S(8), .D(4)) 
   rx(.reset(1'b0), 
	  .datain_p(datain_p),
	  .datain_n(datain_n),
	  .clkin_p(io_t0p),
	  .clkin_n(io_t0n),
	  .dataout(dataout));
   
   //assign io_ping = dataout[31];
   
   assign io_thsub = ~thsub;
   
   assign io_yvt2 = ~vt2h;
   assign io_yvt3 = ~vt3h;
   
endmodule
