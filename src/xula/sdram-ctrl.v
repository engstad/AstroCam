module sdram_ctrl(
				  // Host port
				  input 				   clk_i,
				  input 				   lock_i, // YES
				  input 				   rst_i, // NO
				  input 				   rd_i, // NO
				  input 				   wr_i, // NO
				  output 				   early_op_begun_o, // read/write/self-refresh op has begun (async)
				  output 				   op_begun_o, // read/write/self-refresh has begun (clocked)
				  output 				   rd_pending_o,
				  output 				   done_o,
				  output 				   rd_done_o,
				  input [HADDR_WIDTH-1:0]  addr_i,
				  input [DATA_WIDTH-1:0]   data_i,
				  output [DATA_WIDTH-1:0]  data_o,
				  output [3:0] 			   status_o,
				  // SDRAM port
				  output 				   sd_cke_o, // clock-enable
				  output 				   sd_ce_bo, // chip-select
				  output 				   sd_ras_bo, // row-address strobe
				  output 				   sd_cas_bo, // columnd-address strobe
				  output 				   sd_we_bo, // write-enable
				  output [1:0] 			   sd_bs_o, // bank-address
				  output [SADDR_WIDTH-1:0] sd_addr_o,
				  inout [DATA_WIDTH-1:0]   sd_data_io,
				  output 				   sd_dqmh_o, // enable upper-byte of sdram databus if true
				  output 				   sd_dqml_o, // enable lower-byte of sdram databus if true
				  );
   parameter FREQ = 100.0;
   parameter IN_PHASE = "TRUE";
   parameter PIPE_EN = "FALSE";
   parameter MAX_NOP : integer = 10000;
   parameter ENABLE_REFRESH = "TRUE";
   parameter MULTIPLICATIVE_ACTIVE_ROWS = "FALSE";
   parameter DATA_WIDTH = 16;
   parameter NROWS = 4096;
   parameter NCOLS = 512;
   parameter HADDR_WIDTH = 23; // Host address width
   parameter SADDR_WIDTH = 12; // SDRAM address width
   parameter T_INIT = 200000.0;   // Min initialization interval [ns]
   parameter T_RAS  = 45.0;       // Min interval between active to precharge commands [ns]
   parameter T_RCD  = 20.0;       // Min interval between active and R/W commands [ns]
   parameter T_REF  = 64000000.0; // Maximum refresh interval [ns]
   parameter T_RFC  = 65.0;       // Duration of refresh operation [ns]
   parameter T_RP   = 20.0;       // Min precharge command duration [ns]
   parameter T_XSR  = 75.0;       // Exit self-refresh time [ns]

endmodule // sdram_ctrl

    
   
   
										  
   
   
  
   
