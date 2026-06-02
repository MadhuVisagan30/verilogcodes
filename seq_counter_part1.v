//1)
module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    always @(posedge clk)begin
        if (reset)
            q<=4'b0;
        else
        	q<=q+1'b1;
    end

endmodule

//2)
module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    always @(posedge clk)begin
        if (reset||(q[3]&~q[2]&~q[1]&q[0]))
            q<=4'b0;
        else
            q<=q+1'b1;
    end

endmodule

//3)
module top_module (
    input clk,
    input reset,
    output [3:0] q);
    
    always @(posedge clk)begin
        if (reset || (q==10))
            q<=4'b1;
        else
            q<=q+1'b1;
    end

endmodule

//4)
module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    always @(posedge clk)begin
        if (reset)
            q<=4'b0;
        else if(slowena)begin
            if ((q==9))
                q<=4'b0;
        	else
                q<=q+1'b1;end
        else
            q<=q;
    end

endmodule
