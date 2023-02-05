# FSM Module

This module implements a synchronous FSM module with an unsynchronous reset.

## Functionality
The module is an FSM with a 2-bit input and a 3-bit output.  
The module follows the state diagram shown below.  

## Interface
The module's interface is as follows:
```verilog
input rst                       - Module's reset
input clk                       - Module's clock
input [1:0]in                   - Module's input, changes every clock period
output [2:0]out                 - Module's output, indicates when the sequence was detected
```

##  State diagram
Here is a diagram of different states of the module:  
![FSM](https://user-images.githubusercontent.com/76109073/216827306-1b3f555b-3206-4077-bfcf-50d1fec1187b.JPG)  
 The input and output are written next to the arrow. i.e. "input/ouput".
