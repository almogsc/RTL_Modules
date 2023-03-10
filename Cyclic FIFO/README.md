# FIFO Module

This module implements a synchronous FIFO with an unsynchronous reset.

## Functionality
The module has an address size of 'ADDR = 4' bits and data size of 'DATA = 8' bits.  
The module writes data 'write_data' if the 'write_req' is '1' and the FIFO isn't full. Otherwise, if the FIFO is full the 'fifo_of' flag turns on.  
The module reads data if the 'read_req' is '1' and the FIFO isn't empty and the 'read_data_valid' turn on. Otherwise, if the FIFO is empty the 'fifo_uf' flag turns on.  
The 'read_req' will empty an entry from the FIFO and the 'write_req' will fill an entry in the FIFO.  

## Interface
The module's interface is as follows:
```verilog
input rst                       - Module's reset
input clk                       - Module's clock
input [DATA-1:0]write_data      - Data to be written to the fifo
input write_req, read_req       - write\read requests
output [DATA-1:0]read_data      - Data read from the fifo
output read_data_valid          - Flag marks the read data is valid
output fifo_empty, fifo_full    - Flags to mark the fifo is empty\full
output fifo_of, fifo_uf         - Flags to mark the fifo is write\read requests cause overflow\underflow
```
