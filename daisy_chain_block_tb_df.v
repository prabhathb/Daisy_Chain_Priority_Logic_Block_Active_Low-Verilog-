`timescale 1ns/100ps

module daisy_chain_block_tb_df;
	//declare the signals used for simulation
	wire ACK_out_tb,		ACK_k_tb,	IRQ_tb;
	reg IRQ_input_tb,	ACK_input_tb;

	//instantiate the DUT
	//use the dataflow model
	daisy_chain_block_dataflow dcb(IRQ_tb, ACK_out_tb, ACK_k_tb, ACK_input_tb, IRQ_input_tb);

	initial
		begin

		//produce the test input signals
		 	IRQ_input_tb 	= 1'b1;		
			ACK_input_tb 	= 1'b1;
		#10 	IRQ_input_tb 	= 1'b1;	
			ACK_input_tb 	= 1'b0;
		#10 	IRQ_input_tb 	= 1'b0;	
			ACK_input_tb 	= 1'b1;
		#10 	IRQ_input_tb 	= 1'b0;	
			ACK_input_tb 	= 1'b0;
		end
endmodule
