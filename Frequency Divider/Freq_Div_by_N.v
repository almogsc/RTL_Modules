module Freq_Div_by_N(
    input clk,
    input rst,
    output reg out
    );
    
    localparam N = 7;
    integer counter;
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            out <= 0;
        else if (counter == N)
            out <= ~out;
        else
            out <= out;
    end
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            counter <= 1;
        else if (counter == N)
            counter <= 1;
        else
            counter <= counter + 1;
    end
endmodule 
