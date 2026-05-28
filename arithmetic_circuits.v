//1)
module top_module( 
    input a, b,
    output cout, sum );
    
    always @(*)begin
        sum=~a&b|a&~b;
        cout=a&b;end
    

endmodule

//2)
module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign sum=(~a&(b^cin))|(a&(~(b^cin)));
    assign cout=(cin&(a^b))|(a&b);

endmodule

//3)
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire c1,c2,c3;
    full_adder fadd1(a[0],b[0],cin,c1,sum[0]);
    full_adder fadd2(a[1],b[1],c1,c2,sum[1]);
    full_adder fadd3(a[2],b[2],c2,c3,sum[2]);
    assign cout[2:0]={c3,c2,c1};

endmodule
module full_adder( 
    input a, b, cin,
    output cout, sum );
    
    assign sum=(~a&(b^cin))|(a&(~(b^cin)));
    assign cout=(cin&(a^b))|(a&b);

endmodule

//4)
module top_module( 
    input [3:0] x, y,
    output [4:0] sum );
    wire c1,c2,c3,c4;
    full_adder fadd1(x[0],y[0],1'b0,c1,sum[0]);
    full_adder fadd2(x[1],y[1],c1,c2,sum[1]);
    full_adder fadd3(x[2],y[2],c2,c3,sum[2]);
    full_adder fadd4(x[3],y[3],c3,c4,sum[3]);
    assign sum[4:0]={c4,sum[3:0]};

endmodule
module full_adder( 
    input a, b, cin,
    output cout, sum );
    
    assign sum=(~a&(b^cin))|(a&(~(b^cin)));
    assign cout=(cin&(a^b))|(a&b);

endmodule

//5)
module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s=a+b;
    assign overflow=(a[7]==b[7])&(s[7]^a[7]); 

endmodule

//6)
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [100:0] sum );
    assign sum=a+b+cin;
    assign cout=sum[100];
    

endmodule

//7)
module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire c1,c2,c3;
    bcd_fadd(a[3:0],b[3:0],cin,c1,sum[3:0]);
    bcd_fadd(a[7:4],b[7:4],c1,c2,sum[7:4]);
    bcd_fadd(a[11:8],b[11:8],c2,c3,sum[11:8]);
    bcd_fadd(a[15:12],b[15:12],c3,cout,sum[15:12]);
    
    

endmodule
