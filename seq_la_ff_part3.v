//1)
module top_module (
	input clk,
	input L,
	input r_in,
	input q_in, output mux_o,
	output reg Q);
    assign mux_o=(q_in&~L)|(r_in&L);
    always @(posedge clk)begin  
        Q<=mux_o;end

endmodule

//2)
module top_module (
    input clk,
    input w, R, E, L,
    output Q,output mux1,mux2
);
    assign mux1=(~E&Q)|(E&w);
    assign mux2=(~L&mux1)|(L&R);
    always @(posedge clk)begin
        Q<=mux2;end

endmodule

//3)
module top_module (
    input clk,
    input x,
    output z
); reg q1,q2,q3;
    d_ff one(clk,x^q1,q1);
    d_ff two(clk,x&~q2,q2);
    d_ff three(clk,x|~q3,q3);
	assign z=~(q1|q2|q3);
endmodule

module d_ff (
    input clk,
    input d,
    output reg q
); 
    always@(posedge clk)begin
        q<=d;
    end
    
endmodule

//4)
module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    always @(posedge clk)begin
        case({j,k})
            2'b00:Q<=Q;
            2'b01:Q<=0;
            2'b10:Q<=1;
            2'b11:Q<=~Q;endcase
    end
endmodule
