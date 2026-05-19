module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire Cin,Cout1,Cout2;
    wire [15:0] sum1,sum2;
    assign Cin=1'b0;
    add16 prithiv(a[15:0],b[15:0],Cin,sum1,Cout1);
    add16 prithiv2(a[31:16],b[31:16],Cout1,sum2,Cout2);
    assign sum={sum2,sum1};
    
endmodule
