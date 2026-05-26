module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    always @(*)begin
        if (in[0]==1'b1&&in[1]==1'b1)
            out_both[0]=1'b1;
        else
            out_both[0]=1'b0;
        if (in[1]==1'b1&&in[2]==1'b1)
            out_both[1]=1'b1;
        else
            out_both[1]=1'b0;
        if (in[2]==1'b1&&in[3]==1'b1)
            out_both[2]=1'b1;
        else
            out_both[2]=1'b0;
        if (in[0]==1'b1||in[1]==1'b1)
            out_any[1]=1'b1;
        else
            out_any[1]=1'b0;
        if (in[1]==1'b1||in[2]==1'b1)
            out_any[2]=1'b1;
        else
            out_any[2]=1'b0;
        if (in[2]==1'b1||in[3]==1'b1)
            out_any[3]=1'b1;
        else
            out_any[3]=1'b0;
        if(in[0]^in[1])
            out_different[0]=1'b1;
        else
            out_different[0]=1'b0;
        if(in[1]^in[2])
            out_different[1]=1'b1;
        else
            out_different[1]=1'b0;
        if(in[2]^in[3])
            out_different[2]=1'b1;
        else
            out_different[2]=1'b0;
        if(in[3]^in[0])
            out_different[3]=1'b1;
        else
            out_different[3]=1'b0;
    end

endmodule
