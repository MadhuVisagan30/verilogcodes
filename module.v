module top_module ( input a, input b, output out );
    mod_a prithiv(.in1(a),.in2(b),.out(out));
    //or
    mod_a prithiv(a,b,out);

endmodule
