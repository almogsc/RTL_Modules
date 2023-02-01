module Min_Max_tb();
    reg clk, rst;
    reg [7:0]a, b;
    wire [7:0] min, max;
    integer counter = 0;
    Min_Max dut(.clk(clk),.rst(rst),.A(a),.B(b),.Min(min),.Max(max));
    
    initial
    begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial
    begin
        rst = 1;
        #10;
        rst = 0;
    end
    
    always @(posedge clk)
    begin
        a <= $random(); 
        b <= $random();
        if (min < max)
            $display("Time: %d, Output is valid: %d > %d", $time, max, min);
        else
            $display("Time: %d, Output is invalid: %d < %d", $time, max, min);
    end
    
endmodule
