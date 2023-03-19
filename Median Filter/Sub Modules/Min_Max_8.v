module Min_Max_8(
    //input clk,
    input rst,
    input unsigned [7:0] a1,
    input unsigned [7:0] a2,
    input unsigned [7:0] a3,
    input unsigned [7:0] a4,
    input unsigned [7:0] a5,
    input unsigned [7:0] a6,
    input unsigned [7:0] a7,
    input unsigned [7:0] a8,
    output unsigned [7:0] m1,
    output unsigned [7:0] m2,
    output unsigned [7:0] m3,
    output unsigned [7:0] m4,
    output unsigned [7:0] m5,
    output unsigned [7:0] m6,
    output unsigned [7:0] m7,
    output unsigned [7:0] m8
    );
    wire unsigned [7:0] mx11,mx12,mx13,mx14,mn11,mn12,mn13,mn14;
    wire unsigned [7:0] mx21,mx22,mx23,mx24,mn21,mn22,mn23,mn24;
    
    Min_Max_4 u0(.rst(rst),.A(a1),.B(a2),.C(a3),.D(a4),.X1(mx11),.X2(mx12),.X3(mn11),.X4(mn12));
    Min_Max_4 u1(.rst(rst),.A(a5),.B(a6),.C(a7),.D(a8),.X1(mx13),.X2(mx14),.X3(mn13),.X4(mn14));
    Min_Max_4 u2(.rst(rst),.A(mx11),.B(mx12),.C(mx13),.D(mx14),.X1(m1),.X2(m2),.X3(mn21),.X4(mn22));
    Min_Max_4 u3(.rst(rst),.A(mn11),.B(mn12),.C(mn13),.D(mn14),.X1(mx23),.X2(mx24),.X3(m7),.X4(m8));
    Min_Max_4 u4(.rst(rst),.A(mn21),.B(mn22),.C(mx23),.D(mx24),.X1(m3),.X2(m4),.X3(m5),.X4(m6));
   
endmodule
