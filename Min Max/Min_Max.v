module Min_Max(
    input clk,
    input rst,
    input [DATA-1:0]A,
    input [DATA-1:0]B,
    output reg [DATA-1:0]Min,
    output reg [DATA-1:0]Max
    );
    parameter DATA = 8;
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            Min <= 0;
            Max <= 0;
        end
        else
        begin
            Min <= A > B ? B :A;
            Max <= A > B ? A : B;
        end
    end
endmodule
