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