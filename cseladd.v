module top_module(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum,output wire cout,output reg [15:0] sum1,output reg [15:0] sum2
);
    add16 prithiv(a[15:0],b[15:0],1'b0,sum[15:0],cout);
    add16 hema1(a[31:16],b[31:16],1'b0,sum1[15:0]);
    add16 hema2(a[31:16],b[31:16],1'b1,sum2[15:0]);
    always @(*)begin
        case(cout)
            1'b0:sum[31:16]=sum1;
            1'b1:sum[31:16]=sum2;
        endcase
    end
endmodule
