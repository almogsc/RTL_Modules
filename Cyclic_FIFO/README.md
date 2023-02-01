# FIFO Module

This module implements a FIFO 

## Functionality
The module has an address size of 'ADDR = 4' bits and data size of 'DATA = 8' bits.
The module writes data 'write_data' if the 'write_req' is '1' and the FIFO isn't full. Otherwise, if the FIFO is full the 'fifo_of' flag turns on.
The module reads data if the 'read_req' is '1' and the FIFO isn't empty and the 'read_data_valid' turn on. Otherwise, if the FIFO is empty the 'fifo_uf' flag turns on.

## Interface
The module's interface is as follows:
```verilog
input rst                       - Reset module
input clk                       - Module's clock
input [DATA-1:0]write_data      - Data to be written to the fifo
input write_req, read_req       - write\read requests
output reg [DATA-1:0]read_data  - Data read from the fifo
output reg read_data_valid      - Flag marks the read data is valid
output fifo_empty, fifo_full    - Flags to mark if the fifo is empty\full
output reg fifo_of, fifo_uf     - Flags to mark if the fifo is write\read requests cause overflow\underflow
```
