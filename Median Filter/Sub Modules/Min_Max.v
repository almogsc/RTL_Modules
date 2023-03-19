module Min_Max(
    input rst,
    input unsigned [7:0]A,
    input unsigned [7:0]B,
    output reg unsigned [7:0]Min,
    output reg unsigned [7:0]Max
    );
    
    always @(*)
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
