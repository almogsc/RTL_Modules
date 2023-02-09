module Adder_Subtractor #(parameter N = 8)(
  input [N-1:0] A,    //First Input
  input [N-1:0] B,    //Second Input
    input C_In,       //Carry in input
    input Add_Sub,      //If set Add, If off Sub
  output [N:0] Out    //Output of the summation\subtraction
    );
    
    wire [N-1:0]B_ready;
    wire [N:0]Out_ready;
    wire C_In_ready;
    
    assign B_ready = !Add_Sub ? ~B : B;                                 //If Subtraction is preformed change B to it's 2's complement
    assign C_In_ready = !Add_Sub ? 1 : C_In;                            //Makes A + ~B + 1 If subtraction is preformed
    
    N_Bit_Adder UA(.A(A),.B(B_ready),.C_In(C_In_ready),.Out(Out_ready));
    
    assign Out = {(Add_Sub == 0&&Out_ready[N] == 0),Out_ready[N-1:0]};  //Takes care of sign bit
endmodule
