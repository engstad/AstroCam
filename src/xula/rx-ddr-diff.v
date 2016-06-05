`timescale 1ps/1ps

module top_nto1_ddr_diff_rx (input wire         reset,        
							 input wire [D-1:0] datain_p,
							 input wire [D-1:0] datain_n, 
							 input wire 		clkin_p, 
							 input wire 		clkin_n, 
							 output reg [DS:0] 	dataout,
							 output wire 		dataclk);

   // Parameters for serdes factor and number of IO pins

   parameter integer     S = 8 ;                   // Set the serdes factor to 8
   parameter integer     D = 4 ;                   // Set the number of inputs and outputs
   parameter integer     DS = (D*S)-1 ;            // Used for bus widths = serdes factor * number of inputs - 1

   // Local wiring and registers

   wire 				 rst ;
   wire [DS:0] 			 rxd ;                 // Data from serdeses
   reg [DS:0] 			 rxr ;                 // Registered Data from serdeses
   reg 					 state ;
   reg 					 bslip ;
   reg [3:0] 			 count ;

   assign rst = reset ;                 // active high reset pin
   assign dataclk = rx_bufg_x1;   

   wire 				 rxserdesstrobe;   
   
   // Clock Input. Generate ioclocks via BUFIO2

   serdes_1_to_n_clk_ddr_s8_diff #(.S                      (S),            
				   .DIFF_TERM              ("TRUE"))               // Enable or disable diff termination
   inst_clkin (.clkin_p                (clkin_p),
               .clkin_n                (clkin_n),
               .rxioclkp               (rxioclkp),
               .rxioclkn               (rxioclkn),
               .rx_serdesstrobe        (rx_serdesstrobe),
               .rx_bufg_x1             (rx_bufg_x1));

   // Data Inputs

   serdes_1_to_n_data_ddr_s8_diff #(.S                      (S),                    
				    .D                      (D),
				    .DIFF_TERM              ("TRUE"))               // Enable or disable diff termination
   inst_datain (.use_phase_detector     (1'b1),                 // '1' enables the phase detector logic
		.datain_p               (datain_p),
		.datain_n               (datain_n),
		.rxioclkp               (rxioclkp),
		.rxioclkn               (rxioclkn),
		.rxserdesstrobe         (rx_serdesstrobe),
		.gclk                   (rx_bufg_x1),
		.bitslip                (bslip),
		.reset                  (rst),
		.data_out               (rxd),
		.debug_in               (2'b00),
		.debug                  ());

   always @ (posedge rx_bufg_x1 or posedge rst)            // example bitslip logic, if required
     begin
		if (rst == 1'b1) begin
           state <= 0 ;
           bslip <= 1'b0 ;
           count <= 4'b0000 ;
		end
		else begin
           if (state == 0) begin
              if (rxd[DS:DS-3] != 4'h3) begin
                 bslip <= 1'b1 ;                 // bitslip needed
                 state <= 1 ;
                 count <= 4'b0000 ;
              end
           end
           else if (state == 1) begin
              bslip <= 1'b0 ;                         // bitslip low
              count <= count + 4'b0001 ;
              if (count == 4'b1111) begin
                 state <= 0;
              end
           end
		end
     end
   
   always @ (posedge rx_bufg_x1)                           // process received data
     begin
        dataout <= rxd ;
     end
   
endmodule
