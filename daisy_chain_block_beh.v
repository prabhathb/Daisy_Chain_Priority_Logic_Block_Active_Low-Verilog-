`timescale 1ns/100ps

module daisy_chain_block_behavioural(IRQ,ACK_output,ACK_k,ACK_input,IRQ_input);
	input wire ACK_input,	IRQ_input;
	output reg IRQ,		ACK_output,	ACK_k;
	
	always @ (ACK_input or IRQ_input)
		begin
			IRQ = IRQ_input;
			ACK_k = ACK_input | IRQ_input;
			ACK_output = ACK_input | (~ IRQ_input);
		end
endmodule
