module top_module( 
    input a, 
    input b, 
    output out1,out );
    assign out1=a|b;
    assign out=~out1;
endmodule
// chatgpt solution
module top_module(
    input a,
    input b,
    output out );

    assign out = ~(a | b);

endmodule
