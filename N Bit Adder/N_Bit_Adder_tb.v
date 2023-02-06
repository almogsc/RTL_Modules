module N_Bit_Adder_tb();
    localparam N = 8;
    
    reg [N-1:0]A;
    reg [N-1:0]B;
    reg C_In;
    wire [N:0]Sum;
    
    N_Bit_Adder dut(.A(A),.B(B),.C_In(C_In),.Out(Sum));
    
    integer i;
    
    //Generate random 50 tests for the module
    initial 
    begin
        for (i = 0; i < 50; i = i+1)
        begin
            A = $random();
            B = $random();
            C_In = $random();
            #5;
        end
    end
endmodule
