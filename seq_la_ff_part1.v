//1)
module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    // Use a clocked always block
    //   copy d to q at every positive edge of clk
    //   Clocked always blocks should use non-blocking assignments
    always@(posedge clk)begin
        q<=d;end

endmodule

//2)
module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk)begin
        q[7]<=d[7];
        q[6]<=d[6];
        q[5]<=d[5];
        q[4]<=d[4];
        q[3]<=d[3];
        q[2]<=d[2];
        q[1]<=d[1];
        q[0]<=d[0];
    end

endmodule

//3)
module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);always@(posedge clk)begin
    if (reset)
        q<=8'b0;
    else
        q<=d;
end

endmodule

//4)
module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    always @(negedge clk)begin
    if (reset)
        q<=8'h34;
    else
        q<=d;
    end
    

endmodule

//5)
module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk or posedge areset)begin
        if (areset)
            q<=8'b0;
        else
            q<=d;end

endmodule
