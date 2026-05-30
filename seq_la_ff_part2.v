//1)
module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always @(posedge clk)begin
        if (~resetn)
            q<=16'b0;
        else
            case(byteena)
                2'b00:q<=q;
                2'b01:begin 
                    q[7:0]<=d[7:0];
                    q[15:8]<=q[15:8];end
                2'b10:begin q[15:8]<=d[15:8];
                    q[7:0]<=q[7:0];end
                2'b11:q<=d;endcase 
    end

endmodule

//2)
module top_module (
    input d, 
    input ena,
    output q);
    always @(*)begin
        if (ena & d | ena & ~d)begin
            q<=d;end
        else
            q<=q;
    end
            

endmodule

//3)
module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    always @(posedge clk or posedge ar)begin
        if (ar)
            q<=1'b0;
        else
            q<=d;
    end

endmodule

//4)
module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q);
    always @(posedge clk )begin
        if (r)
            q<=1'b0;
        else
            q<=d;
    end

endmodule

//5)
module top_module (
    input clk,
    input in, 
    output out);
    always @(posedge clk)begin
        out<=out^in;end

endmodule
