module Min_Max(
    input clk,
    input rst,
    input [7:0]A,
    input [7:0]B,
    output reg [7:0]Min,
    output reg [7:0]Max
    );
    
    always @(posedge clk)
    begin
        if (rst)
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
