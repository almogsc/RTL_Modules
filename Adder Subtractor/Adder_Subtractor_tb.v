module Adder_Subtractor_tb();
    localparam N = 8;
    reg [N-1:0] A;
    reg [N-1:0] B;
    reg C_In;
    reg Add_Sub;      
    wire [N:0] Out;
    
    Adder_Subtractor dut(.A(A),.B(B),.C_In(C_In),.Add_Sub(Add_Sub),.Out(Out));
    
    integer i;
    
    initial
    begin
        for(i = 0; i < 50; i = i+1)
        begin
            A = $random();
            B = $random();
            C_In = $random();
            Add_Sub = $random();
            #5;
        end
    end
endmodule
