`timescale 1ns/100ps

module daisy_chain_block_dataflow(IRQ,ACK_output,ACK_k,ACK_input,IRQ_input);
	input wire ACK_input,	IRQ_input;
	output wire IRQ,	ACK_output,	ACK_k;
	
	assign IRQ = IRQ_input;
	assign ACK_k = ACK_input | IRQ_input;
	assign ACK_output = ACK_input | (~ IRQ_input);
endmodule
