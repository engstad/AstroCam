`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:14:48 09/10/2015
// Design Name:   main
// Module Name:   /home/engstad/Electronics/proj/FPGA/icx/main-tb.v
// Project Name:  icx
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_tb;

	// Inputs
	reg clock_in;
	reg blink_en;

	// Outputs
	reg blink_o;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clock_in(clock_in), 
		.blink_en(blink_en), 
		.blink_o(blink_o)
	);

	initial begin
		// Initialize Inputs
		clock_in = 0;
		blink_en = 1;
		blink_o = 0;
		#10;
		blink_en = 0;
		#10;
		blink_en = 1;
		#200;
		blink_en = 0;
		#100;      
		$finish;
	end
	
	always
		#1 clock_in = !clock_in;
      
endmodule

