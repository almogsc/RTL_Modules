module Padovan_Sequence(
    
    input clk,
    input rst,
    output reg[16-1:0] f_n,
    output reg[16-1:0] n,
    output reg valid
    );
    reg [16-1:0]f_n_1, f_n_2, f_n_3;
    
    always @(posedge clk or negedge rst)
    if (!rst)
    begin
        f_n_1       = 0;
        f_n_2       = 1;
        f_n_3       = 0;
        valid       = 1;
        n           = 0;
        f_n         = f_n_2+f_n_3;
    end
    else
    begin
        f_n_3   = f_n_2;
        f_n_2   = f_n_1;
        f_n_1   = f_n;
        f_n     = f_n_2+f_n_3;
        n       = n+1;
        if (f_n_2 + f_n_3 > 2**16 - 1)
            valid = 0;
    end
endmodule
