module N_Bit_Adder#(
parameter N = 8)
(
    input [N-1:0] A,        //First Input
    input [N-1:0] B,        //Second Input
    input C_In,             //Carry in
    output [N:0] Out        //Output - The sum of A, B and C_In 
    );
    
    wire [N-1:0]carry;
    wire [N-1:0]Sum;
    genvar i;
    
    //First full adder - gets the carry in
    FA U0(.a(A[0]), .b(B[0]), .cin(C_In), .sum(Sum[0]), .cout(carry[0]));

    //The rest of the adders get previous full adder's carry
    generate
        for(i=1; i < N; i = i + 1)
        begin
            FA Ui(.a(A[i]),.b(B[i]),.cin(carry[i-1]),.sum(Sum[i]),.cout(carry[i]));
        end
    endgenerate
    
    //Concatinating the sum and the final carry to get the full number
    assign Out = {carry[N-1],Sum};
endmodule
