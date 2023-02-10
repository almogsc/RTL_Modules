# Frequency Divider Module

This module divides a given clock frequency by two.
This module has an asynchronous reset.

## Functionality
The module's output changes signal with a period two times larger than it's input clock.  
The reset is essential for initial loading to the output.  

## Interface
```verilog
    input clk       -- Module's input clock
    input rst       -- Module's input reset
    output out      -- Module's output
```
