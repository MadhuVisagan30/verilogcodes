//my solution
module top_module( input a,b,c,output w,x,y,z );
    assign w=a;
    assign z=c;
    assign x=b;
    assign y=b;

endmodule
//hdlbits solution
module top_module (
	input a,
	input b,
	input c,
	output w,
	output x,
	output y,
	output z  );
	
	assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;

	// If we're certain about the width of each signal, using 
	// the concatenation operator is equivalent and shorter:
	// assign {w,x,y,z} = {a,b,b,c};
	
endmodule
