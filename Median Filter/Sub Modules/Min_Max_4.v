module Min_Max_4(
    input rst,
    input unsigned [7:0] A,
    input unsigned [7:0] B,
    input unsigned [7:0] C,
    input unsigned [7:0] D,
    output reg unsigned [7:0] X1,
    output unsigned [7:0] X2,
    output unsigned [7:0] X3,
    output reg unsigned [7:0] X4
    );
    
    wire unsigned [7:0] mx11,mx12,mn11,mn12,mx21,mx22,mn21,mn22;
    
    Min_Max a1(.rst(rst),.A(A),.B(B),.Min(mn11),.Max(mx11));//1
    Min_Max a2(.rst(rst),.A(C),.B(D),.Min(mn12),.Max(mx12));//1
    Min_Max a3(.rst(rst),.A(mx11),.B(mx12),.Min(mn21),.Max(mx21));//2
    Min_Max a4(.rst(rst),.A(mn11),.B(mn12),.Min(mn22),.Max(mx22));//2
    Min_Max a5(.rst(rst),.A(mx22),.B(mn21),.Min(X3),.Max(X2));//3
    
    always @(*)
    begin
        X1 <= mx21;
        X4 <= mn22;
    end   
endmodule
