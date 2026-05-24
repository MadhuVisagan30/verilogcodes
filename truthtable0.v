module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
 	wire y1,y2,y3,y4;
    and(y1,~x3,x2,~x1);and(y2,x1,~x3,x2);and(y3,x1,~x2,x3);and(y4,x2,x1,x3);or(f,y1,y2,y3,y4);
endmodule
