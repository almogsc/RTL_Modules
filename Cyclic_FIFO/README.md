# FIFO Module

This module implements a FIFO 

## Functionality
The module has an address size of 'ADDR = 4' bits and data size of 'DATA = 8' bits.
The module writes data 'write_data' if the 'write_req' is '1' and the FIFO isn't full. Otherwise, if the FIFO is full the 'fifo_of' flag turns on.
The module reads data if the 'read_req' is '1' and the FIFO isn't empty and the 'read_data_valid' turn on. Otherwise, if the FIFO is empty the 'fifo_uf' flag turns on.

##Interface
The module's interface is as follows:
```
input rst,
input clk,
input [DATA-1:0]write_data,
input write_req, read_req,
output reg [DATA-1:0]read_data,
output reg read_data_valid,
output fifo_empty, fifo_full,
output reg fifo_of, fifo_uf
```
