module Sequence_Detector_tb();

    reg clk, rst, in;
    wire out;
    Sequence_Detector dut(clk,rst,in,out);
    
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
    
    always @(posedge clk)
    begin
        in = $random();
    end
endmodule
