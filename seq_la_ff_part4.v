//1)
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] previous;
    always @(posedge clk)begin
        pedge<=in&~previous;
        previous<=in;
    end
endmodule

//2)
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] previous;
    always @(posedge clk)begin
        previous<=in;
        anyedge<=previous^in;
        end
    

endmodule

//3)
module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

    reg [31:0] prev_in;

    always @(posedge clk) begin
        if (reset) begin
            out <= 32'b0;
        end
        else begin
            out <= out | (prev_in & ~in);
        end

        prev_in <= in;
    end

endmodule

//4)
module top_module (
    input clk,
    input d,
    output reg q
);
    reg q1,q2;
    d_ff ff1(clk,d,q1);
    dn_ff ff2(clk,d,q2);
    assign q=(q1&clk)|(q2&~clk);
    

endmodule
module d_ff(input clk,input d,output q);
    always @(posedge clk)begin
        q<=d;
    end
endmodule
module dn_ff(input clk,input d,output q);
    always @(negedge clk)begin
        q<=d;
    end
endmodule
