# Padovan Sequence

This module creates the Padovan numbers and indicates which number it is.  
A padovan number follows the formula f(n) = f(n-2) + f(n-3), when f(0)=f(1)=f(2)=0.  

## Functionality

The module outputs are the padovan number and which number it is at each clock cycle.  
The module's valid output is set when the module's inner registers are set by a reset, and as long as the padovan number doesn't exceed 16 bits.  

## Interface
The 'Half-Adder' has the following interface:
```verilog
    input clk               - Module's clock
    input rst               - Module's rst, once the reset happends the numbers start to generate
    output reg[15:0] f_n    - The value of the n-th padovan number
    output reg[15:0] n      - The n-th of the padovan number
    output valid            - The output is valid
```
