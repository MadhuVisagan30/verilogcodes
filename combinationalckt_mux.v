//1)
module top_module( 
    input a, b, sel,
    output out );
    always @(*)begin
        case(sel)
            1'b0:out=a;
            1'b1:out=b;
            default:out=1'b0;endcase
    end

endmodule

//2)
module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    assign out[99:0]=({100{~sel}}&a[99:0])|({100{sel}}&b[99:0]);

endmodule

//3)
module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    always@(*)begin
        casez(sel)
            4'b0000:out=a;
            4'b0001:out=b;
            4'b0010:out=c;
            4'b0011:out=d;
            4'b0100:out=e;
            4'b0101:out=f;
            4'b0110:out=g;
            4'b0111:out=h;
            4'b1000:out=i;
            4'b1001:out={16{1'b1}};
            4'b1010:out={16{1'b1}};
            4'b1011:out={16{1'b1}};
            4'b11zz:out={16{1'b1}};endcase
    end

endmodule


//4)
module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    assign out=in[sel];

endmodule


//5)
module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    always @(*)begin
        out=in[sel*4+:4]; //in[startingbit+:width]
    end
endmodule
