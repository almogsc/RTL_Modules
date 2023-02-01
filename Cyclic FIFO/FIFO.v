module FIFO #(
    parameter DATA = 8,
    parameter ADDR = 4)
    (
    input rst,
    input clk,
    input [DATA-1:0]write_data,
    input write_req, read_req,
    output reg [DATA-1:0]read_data,
    output reg read_data_valid,
    output fifo_empty, fifo_full,
    output reg fifo_of, fifo_uf
    );
    
    integer i;
    
    reg [DATA-1:0]FIFO[2**ADDR-1:0];
    reg [ADDR-1:0]w_pointer, r_pointer;
    reg [ADDR:0] filled;
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            read_data       <= 0;
            read_data_valid <= 0;
            fifo_of         <= 0;
            fifo_uf         <= 0;
            w_pointer       <= 0;
            r_pointer       <= 0;
            filled          <= 0;
            for (i = 0; i < 2**ADDR-1; i = i + 1)
                FIFO[i]     <= 0;
        end
        else
        begin
            read_data_valid     <= 0;
            fifo_of             <= 0;
            fifo_uf             <= 0;
            if (write_req && !fifo_full)
            begin
                FIFO[w_pointer] <= write_data;
                filled <= filled + 1;
                if (w_pointer + 1 == 2**ADDR)
                    w_pointer = 0;
                else
                    w_pointer   <= w_pointer + 1;
            end
            else if (write_req && fifo_full)
                fifo_of         <= 1;
            if (read_req && !fifo_empty)
            begin
                read_data       <= FIFO[r_pointer];
                read_data_valid <= 1;
                filled          <= filled - 1;
                if (r_pointer + 1 == 2**ADDR)
                    r_pointer   <= 0;
                else
                    r_pointer <= r_pointer + 1;
            end
            else if (read_req && fifo_empty)
                fifo_uf         <= 1;
        end
    end
    
    assign fifo_empty = (filled == 0) && rst ? 1 : 0;
    assign fifo_full = (filled == 2**ADDR) && rst ? 1 : 0;   
endmodule
