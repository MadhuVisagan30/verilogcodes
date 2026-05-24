module top_module ( input p1a, p1b, p1c, p1d, p1e, p1f, output p1y,input p2a, p2b, p2c, p2d,output p2y );
    
    wire p1abc,p1def;
    and(p1abc,p1a,p1b,p1c);
    and(p1def,p1d,p1e,p1f);
    assign p1y=p1abc|p1def;
    wire p2ab,p2cd;
    and(p2ab,p2a,p2b);
    and(p2cd,p2c,p2d);
	assign p2y=p2cd|p2ab;    
    

endmodule
