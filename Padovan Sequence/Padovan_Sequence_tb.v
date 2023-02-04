module Padovan_Sequence_tb();
        
    wire [16-1:0]f_n, n;
    wire valid;
    reg clk, rst;
    Padovan_Sequence dut(.clk(clk), .rst(rst), .f_n(f_n), .n(n), .valid(valid));
    
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
