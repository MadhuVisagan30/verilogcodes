// my solution
module top_module( input in, output out );
    not(out,in);

endmodule
// hdlbits solution
module top_module(
	input in,
	output out
);
	
	assign out = ~in;
	
endmodule
