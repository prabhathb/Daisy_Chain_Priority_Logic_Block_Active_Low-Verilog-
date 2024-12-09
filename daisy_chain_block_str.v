`timescale 1ns/100ps

module daisy_chain_block_structural(IRQ,ACK_output,ACK_k,ACK_input,IRQ_input);
	input wire ACK_input,	IRQ_input;
	output wire IRQ,	ACK_output,	ACK_k;
	
	buf u0(IRQ,IRQ_input);
	or u1(ACK_k,ACK_input,IRQ_input);
	or u2(ACK_output,ACK_input,(~ IRQ_input));
endmodule
