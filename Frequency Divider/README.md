# Frequency Divider Module

These modules divide a given clock frequency by two or N.  
These modules have an asynchronous reset.

## Functionality
The modules' output changes the input clock signal period to two or N times larger, i.e. the output is a signal with a frequency divided by two or N.  
The reset is essential for initial loading to the output.  

## Interface
The modules should have the following interface:
```verilog
    input clk       -- Module's input clock
    input rst       -- Module's input reset
    output out      -- Module's output the divided clock frequency
```
