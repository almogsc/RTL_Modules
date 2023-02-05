module FSM_tb();

reg clk, rst;
reg [1:0] in;
wire [2:0]out;
FSM dut(.clk(clk), .rst(rst), .in(in), .out(out));

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

always @(posedge clk)
begin
    in = $random();
end
endmodule
