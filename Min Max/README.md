# Min Max Module

This module is a synchronous with an unsynchronous reset.  

## Functionality
The module receives two inputs 'A' and 'B' of size 'DATA = 8' bits and detemines which is greater and which is lesser.  
The greater value is directed to the 'Max' output and the lesser value is directed to the 'Min' output.  

## Interface
The module's interface is as follows:
```verilog
    input clk                 - Module's clock
    input rst                 - Module's reset
    input [DATA-1:0]A         - Input 1
    input [DATA-1:0]B         - Input 2
    output [DATA-1:0]Min      - Minimum value
    output [DATA-1:0]Max      - Maximum value
```
