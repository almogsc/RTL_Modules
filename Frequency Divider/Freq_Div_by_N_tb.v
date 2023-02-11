module Freq_Div_by_N_tb();

reg clk,rst;
wire out;

Freq_Div_by_N dut(.clk(clk), .rst(rst), .out(out));

initial
begin
    clk = 1;
    forever #5 clk = ~clk;
end

initial
begin
    rst = 1;
    #5 rst = 0;
    #5 rst = 1;
end
endmodule
