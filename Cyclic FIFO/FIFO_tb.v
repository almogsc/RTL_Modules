module FIFO_tb();
    
    parameter DATA = 8;
    parameter ADDR = 4;

    reg rst, clk;
    reg [DATA-1:0]write_data;
    reg write_req, read_req;
    wire [DATA-1:0]read_data;
    wire read_data_valid;
    wire fifo_empty, fifo_full;
    wire fifo_of, fifo_uf;
    
FIFO dut(
         .rst(rst),
         .clk(clk),
         .write_data(write_data),
         .write_req(write_req),
         .read_req(read_req),
         .read_data(read_data),
         .read_data_valid(read_data_valid),
         .fifo_empty(fifo_empty),
         .fifo_full(fifo_full),
         .fifo_of(fifo_of),
         .fifo_uf(fifo_uf)
         );
    integer i = 0;//, j = 0;
    
    initial
    begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial
    begin
        rst = 0;
        #10;
        rst = 1;
//        #5;
//        rst = 1;
    end

    always @(posedge clk)
    begin
        write_data  <= $random();
        i = i + 1;
        write_req     <= 1;
        read_req      <= 0;
        if (i > 18 && i < 39 || i > 58 && i < 77)
        begin
            read_req  <= 1;
            write_req <= 0;
        end

    end
endmodule
