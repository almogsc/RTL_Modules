# N Bit Adder Subtractor

This module is combinatorial and it adds two numbers and a carry in or subtracts between two numbers.     

## Functionality

The module gets three inputs, A and B of N bits, a carry in of 1 bit and add or sub bit.  
The module outputs the summation of the A, B and carry in inputs to a N+1 size output if the 'Add_Sub = 1'.  
Otherwise, if 'Add_Sub = 0' it outputs the difference 'A-B'.  
The module is desiged using the 'N Bit Adder'.  
The default size of N is 8 (N=8).

## Interface
The module has the following interface:
```verilog
    input [N-1:0] A       - First number input
    input [N-1:0] B       - Second number input
    input C_In            - Carry in input
    input Add_Sub,        - If set Add, If off Sub
    output [N:0] Out      - Summation output
```  
