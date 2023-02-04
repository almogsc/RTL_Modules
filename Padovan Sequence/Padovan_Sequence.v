module Padovan_Sequence(
    input clk,
    input rst,
    output reg[15:0] f_n,
    output reg[15:0] n,
    output valid
    );
    
    reg [15:0]f_n_1, f_n_2, f_n_3;
    reg valid_bit;
    
    
    
    always @(posedge clk or negedge rst)
    if (!rst)
    begin
        f_n_1       = 0;
        f_n_2       = 1;
        f_n_3       = 0;
        valid_bit   = 1;
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
    end
endmodule
