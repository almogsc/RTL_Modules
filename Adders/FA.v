module FA(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    wire sum1, c1, c2, c3;
    HA ha1(.a(a), .b(b), .sum(c1), .carry(c2));
    HA ha2(.a(c1), .b(cin), .sum(sum), .carry(c3));
    assign cout = c2 | c3; 
endmodule
