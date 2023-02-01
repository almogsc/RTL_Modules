module Adder_8_Bit(
    input [7:0] A,
    input [7:0] B,
    output [7:0] S,
    output C
    );
    wire c0, c1, c2, c3, c4, c5, c6;
    HA ha1 (.a(A[0]), .b(B[0]), .sum(S[0]), .carry(c0));
    FA fa1 (.a(A[1]), .b(B[1]), .cin(c0), .sum(S[1]), .cout(c1));
    FA fa2 (.a(A[2]), .b(B[2]), .cin(c1), .sum(S[1]), .cout(c2));
    FA fa3 (.a(A[3]), .b(B[3]), .cin(c2), .sum(S[1]), .cout(c3));
    FA fa4 (.a(A[4]), .b(B[4]), .cin(c3), .sum(S[1]), .cout(c4));
    FA fa5 (.a(A[5]), .b(B[5]), .cin(c4), .sum(S[1]), .cout(c5));
    FA fa6 (.a(A[6]), .b(B[6]), .cin(c5), .sum(S[1]), .cout(c6));
    FA fa7 (.a(A[7]), .b(B[7]), .cin(c6), .sum(S[1]), .cout(C));
endmodule
