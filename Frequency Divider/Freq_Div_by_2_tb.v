module Freq_Div_by_2_tb();

    reg clk;
    reg rst;
    wire out;

Freq_Div_by_2 dut(.clk(clk),.rst(rst),.out(out));

    initial
    begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial
    begin
    rst = 1;
    #5 rst = 0;
    #5 rst = 1;
    end
    
endmodule
