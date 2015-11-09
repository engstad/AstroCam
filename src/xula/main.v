`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:47:48 08/27/2015 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module main(input  fpgaClk_i,
			output io_xvt1,
			output io_xvt2,
			output io_xvt3,
			output io_xvt4,
			output io_yvt2,
			output io_yvt3,
			output io_h1,
			output io_h2,
			output io_thsub
			);
	 
   // m/d 12 MHz = 54 MHz => d = 2, m = 9, 
   // m/d 12 MHz =  6 MHz => d = 4, m = 2 
   DCM_SP #(.CLKFX_DIVIDE(32), .CLKFX_MULTIPLY(9)) dcm(.CLKIN(fpgaClk_i), .CLKFX(clkfx), .RST(1'b0),
													  .CLK0(), .CLK90(), .CLK180(), .CLK270(), .CLK2X(), .CLK2X180(),
													  .CLKDV(), .CLKFX180(clkfx180), .LOCKED(), .PSDONE(), .STATUS(),
													  .CLKFB(), .DSSEN(), .PSCLK(), .PSEN(1'b0), .PSINCDEC());
   
   BUFGCE_1 h1_inst(.I(clkfx), .CE(~hblank), .O(h1));   
   BUFGCE   h2_inst(.I(clkfx180), .CE(~hblank), .O(h2));

   ODDR2 #(.DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
		   .INIT(1'b1),            // Sets initial state of the Q output to 1'b0 or 1'b1
		   .SRTYPE("SYNC")         // Specifies "SYNC" or "ASYNC" set/reset
   ) h1_forward (.Q(oddr_h1),
				 .C0(h1),   // 1-bit clock input
				 .C1(~h1),  // 1-bit clock input
				 .CE(1'b1), // 1-bit clock enable input
				 .D0(1'b1), // 1-bit data input (associated with C0)
				 .D1(1'b0), // 1-bit data input (associated with C1)
				 .R(1'b0),  // 1-bit reset input
				 .S(1'b0)   // 1-bit set input
				 );

   ODDR2 #(.DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
		   .INIT(1'b1),            // Sets initial state of the Q output to 1'b0 or 1'b1
		   .SRTYPE("SYNC")         // Specifies "SYNC" or "ASYNC" set/reset
   ) h2_forward (.Q(oddr_h2),
				 .C0(h2),   // 1-bit clock input
				 .C1(~h2),  // 1-bit clock input
				 .CE(1'b1), // 1-bit clock enable input
				 .D0(1'b1), // 1-bit data input (associated with C0)
				 .D1(1'b0), // 1-bit data input (associated with C1)
				 .R(1'b0),  // 1-bit reset input
				 .S(1'b0)   // 1-bit set input
				 );
   
   OBUF h1_obuf(.I(oddr_h1), .O(io_h1));   
   OBUF h2_obuf(.I(oddr_h2), .O(io_h2));   
      
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

   assign io_thsub = ~thsub;
   
   assign io_yvt2 = ~vt2h;
   assign io_yvt3 = ~vt3h;
   
endmodule
