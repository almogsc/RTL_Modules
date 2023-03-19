module Median_Filter_tb();

reg clk;
reg rst;
reg unsigned [7:0] xm1ym1;
reg unsigned [7:0] xm1y0;
reg unsigned [7:0] xm1yp1;
reg unsigned [7:0] x0ym1;
reg unsigned [7:0] x0y0;
reg unsigned [7:0] x0yp1;
reg unsigned [7:0] xp1ym1;
reg unsigned [7:0] xp1y0;
reg unsigned [7:0] xp1yp1;
wire unsigned [7:0] median;
integer counter = 0;

Median_Filter u0(.clk(clk),.rst(rst),
                .xm1ym1(xm1ym1),.xm1y0(xm1y0),
                .xm1yp1(xm1yp1),.x0ym1(x0ym1),
                .x0y0(x0y0),.x0yp1(x0yp1),
                .xp1ym1(xp1ym1),.xp1y0(xp1y0),
                .xp1yp1(xp1yp1),.median(median)
                );
                
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
    xm1ym1 = $random();
    xm1y0 = $random();
    xm1yp1 = $random();
    x0ym1 = $random();
    x0y0 = $random();
    x0yp1 = $random();
    xp1ym1 = $random();
    xp1y0 = $random();
    xp1yp1 = $random();
    counter = counter + 1;
end

endmodule
