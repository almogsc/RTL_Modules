# Sequence Detector Module

This module implements a synchronous sequence detector module with an unsynchronous reset.

## Functionality
The module is FSM based and detects the sequence '1011' without repetitions.

## Interface
The module's interface is as follows:
```verilog
input rst                       - Module's reset
input clk                       - Module's clock
input in                        - Module's input, changes every clock period
output out                      - Module's output, indicates when the sequence was detected
```

##  State diagram
Here is a diagram to explain the different states of the module
![Sequence_Detector](https://user-images.githubusercontent.com/76109073/216690505-2d72862f-fd3b-408f-8276-5f89fa8ab232.JPG)
