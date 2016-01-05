//
// Counters for knowing where we are in the frame
//
module counters(input             clk, 
				input 			  reset,
				output reg [4:0]  state,
				output reg [11:0] start,
				output reg [11:0] hd,
				output reg [11:0] vd);

   //
   // -7V <->  0V: 37 ns + (110|180) ns = 137|217 ns =  7.4|11.7 cycles
   //   0 <-> 12V: 43 ns + (240|130) ns = 284|173 ns = 13.0| 9.3 cycles
   // 
   // Most vertical pulses are longer (162 cycles).
   //
   // Horizontal lines going through level shifter is 4.4-6.0 ns, less than 1/3 of a cycle.
   //
   // 
   //
   // 1132 * 1060 = 1,199,920
   // f = 54 MHz => 1 cycle = 18.5185.. ns
   // 1132 * 1060 / 54e6 = 0.0222207407407 s = 22.22 ms
   //
   // A 220 cycle pulse is 4.074 uS.
   //
   // 1472 x 1050 : Total pixels
   // 1392 x 1040 : Effective pixels [8 first and 2 last rows are dark. [356-396 (40) and 1092-1132 (40)]
   // 1360 x 1024 : Active pixels [16 rows and 32 columns]
   //
   // 2ch: 1132-356 = 776 (x 2 = 1552)....? (1472/2 = 736)
   // 1ch: 1829-355 = 1474 (2 more??)
   //
   
   parameter INIT_PERIOD = 3340;
   parameter SPECIAL_PERIOD = 352;
   parameter SPECIAL_COUNT = 13;
   parameter NORMAL_PERIOD = 1132;
   parameter NORMAL_COUNT = 1060 - 8;   
   
   reg [21:0] 					  cycle; // 4,194,304
   reg [7:0] 					  frame;   
   
   initial begin
      state = 0;
      start = 0;
      cycle = 0;
	  hd = 0;
	  vd = 0;
	  frame = 0;	  
   end
   
   always @(posedge clk or posedge reset) begin
      if (reset) begin
		 state <= 0;
		 start <= 0;
		 cycle <= 0;
		 hd <= 0;
		 vd <= 0;
		 frame <= 0;		 
      end else begin		 
		 cycle <= cycle + 1'b1;
		 start <= start + 1'b1;
		 hd <= hd + 1'b1;
		 if (hd == 1132) begin
			hd <= 1;
			vd <= vd + 1'b1;
		 end

		 if (vd == 1060 && hd == 500) begin
			state <= 0;
			start <= 0;
			cycle <= 0;
			hd <= 0;
			vd <= 0;
			frame <= frame + 1'b1;
		 end else if (state == 0) begin
			// INIT period
			if (start == INIT_PERIOD) begin
			   state <= 1;
			   start <= 0;
			end
		 end else if (state < SPECIAL_COUNT + 1) begin
			if (start == SPECIAL_PERIOD - 1) begin
			   state <= state + 1'b1;
			   start <= 0; // Small periods starts at 0
			end
		 end else if (state < SPECIAL_COUNT + 2) begin
			if (start == 7) begin
			   state <= state + 1;
			   start <= 1;
			end			   
		 end else if (state < NORMAL_COUNT + SPECIAL_COUNT + 1) begin
			if (start == NORMAL_PERIOD) begin
			   start <= 1; // Normal counting starts at 1
			end
		 end
	  end
   end
endmodule				

// 
// output true means vt1 = -7V, false means 0V.
//
module vt1low(input [4:0]  state,
			  input [11:0] start,
			  output       out);

   parameter GND = 1'b0;
   parameter NEG = 1'b1;

   assign out = (state == 0) ? NEG :
				(state <= 13) ? ((start >= 89 && start <= 308) ? GND : NEG) :
				(state == 14) ? NEG :
				                ((start >= 92 && start <= 311) ? GND : NEG);

endmodule // vt1low

// 
// output true means vt1 = -7V, false means 0V.
//
module vt4low(input [4:0]  state,
			  input [11:0] start,
			  output 	   out);

   parameter GND = 1'b0;
   parameter NEG = 1'b1;

   assign out = (state ==  0) ? ((start > 1128) && (start <= 2748) ? GND : NEG) :
				(state <= 13) ? ((start > (3560-3340) && start <= (3692-3340) ? NEG : GND)) :
				(state == 13) ? NEG : 
				                ((start > 3 && start <= 223) ? GND : NEG);
   
endmodule

// 
// output true means vt1 = -7V, false means 0V.
//
module vt2low(input [4:0]  state,
			  input [11:0] start,
			  output 	   out);

   parameter GND = 1'b0;
   parameter NEG = 1'b1;

   assign out = (state ==  0) ? GND :
				(state <= 13) ? ((start > (3384-3340) && start <= (3516-3340) ? NEG : GND)) :
				(state == 13) ? GND : 
				                ((start > 47 && start <= 179) ? NEG : GND);
   
endmodule

module vt3low(input [4:0]  state,
			  input [11:0] start,
			  output 	   out);

   parameter GND = 1'b0;
   parameter NEG = 1'b1;

   assign out = (state ==  0) ? GND :
				(state <= 13) ? ((start > (3472-3340) && start <= (3604-3340) ? NEG : GND)) :
				(state == 13) ? GND : 
				                ((start > 135 && start <= 267) ? NEG : GND);
   
endmodule

module vt2high(input [4:0]  state,
			   input [11:0] start,
			   output 		out);
   assign out = (state == 0) && (start > 2656) && (start <= 2818);      
endmodule

module vt3high(input [4:0]  state,
			   input [11:0] start,
			   output 		out);
   assign out = (state == 0) && (start > 2678) && (start <= 2840);
endmodule // vt3high

module theta_sub(input [11:0] hpos, output out);
   assign out = (hpos > 240 && hpos <= 294);
endmodule // theta_sub


module clpob(input [11:0] hpos, output out);
   assign out = (hpos > 359 && hpos <= 386);
endmodule

module hblank(input        clk,
			  input [11:0] hpos,
			  output 	   out);

   reg hsync;
   assign out = hsync;
   
   always @(posedge clk) begin
	  hsync <= hpos == 0 ? 1 : hpos == 356 ? 0 : hsync;
   end
endmodule // hblank

/*
module hd(input  clk,
          input  blnk,
          output h1,
          output h2);

   reg 			 s;
   
   initial s = 0;
   
   always @(posedge clk) begin
	  s = ~s;
   end	
   
   assign h1 = blnk ? 1'b1 : s;
   assign h2 = ~s;
endmodule
*/

module icx(input  clk,
		   input  reset,
		   output xvt1,
		   output xvt2,
		   output xvt3,
		   output xvt4,
		   output rvt2,
		   output rvt3,
		   output hblank,
		   output thsub,
		   output cob);

   wire [4:0] 	  state;
   wire [11:0] 	  start;
   wire [11:0] 	  x, y;   

   counters ctr(.clk(clk), .reset(reset), .state(state), .start(start), .hd(x), .vd(y));

   vt1low vt1(.state(state), .start(start), .out(xvt1));
   vt2low vt2(.state(state), .start(start), .out(xvt2));
   vt3low vt3(.state(state), .start(start), .out(xvt3));
   vt4low vt4(.state(state), .start(start), .out(xvt4));

   vt2high vth2(.state(state), .start(start), .out(rvt2));
   vt3high vth3(.state(state), .start(start), .out(rvt3));   

   hblank hb(.clk(clk), .hpos(x), .out(hblank));
   
   clpob clpob_mod(.hpos(x), .out(cob));

   theta_sub tsub_mod(.hpos(x), .out(thsub));      
endmodule
				

/*   
module tff(output reg q, input clk, input rst);
  
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 1'b0;
    end else begin
      q <= ~q;
    end
  end
endmodule


module rcc(q, clk, rst);
  output [3:0] q;
  input clk, rst;
  
  tff ff0(q[0], clk, rst);
  tff ff1(q[1], q[0], rst);
  tff ff2(q[2], q[1], rst);
  tff ff3(q[3], q[2], rst);
  
endmodule
*/
