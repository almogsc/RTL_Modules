module Median_Filter(
    input clk,
    input rst,
    input unsigned [7:0] xm1ym1,
    input unsigned [7:0] xm1y0,
    input unsigned [7:0] xm1yp1,
    input unsigned [7:0] x0ym1,
    input unsigned [7:0] x0y0,
    input unsigned [7:0] x0yp1,
    input unsigned [7:0] xp1ym1,
    input unsigned [7:0] xp1y0,
    input unsigned [7:0] xp1yp1,
    output reg unsigned [7:0] median
    );
    
    wire unsigned [7:0] m1,m2,m3,m4,m5,m6,m7,m8;
    
    Min_Max_8 u0(.rst(rst),
                 .a1(xm1ym1),
                 .a2(xm1y0),
                 .a3(xm1yp1),
                 .a4(x0ym1),
                 .a5(x0yp1),
                 .a6(xp1ym1),
                 .a7(xp1y0),
                 .a8(xp1yp1),
                 .m1(m1),
                 .m2(m2),
                 .m3(m3),
                 .m4(m4),
                 .m5(m5),
                 .m6(m6),
                 .m7(m7),
                 .m8(m8)
                 );
    
    always @(posedge clk)
    begin
        if (x0y0 < m5)
            median <= m5;
        else if (x0y0 > m4)
            median <= m4;
        else
            median <= x0y0;
    end
    
endmodule
