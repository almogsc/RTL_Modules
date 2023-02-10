module Freq_Div_by_2(
    input clk,
    input rst,
    output reg out
    );
    
    always @(posedge clk or negedge rst)
    if (!rst)
        out <= 0;
    else
        out <= ~out;
endmodule
