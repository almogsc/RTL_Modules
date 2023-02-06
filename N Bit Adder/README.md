# N Bit Adder

This module is combinatorial and adds two numbers and a carry in.     

## Functionality

The module gets three inputs, A and B of N bits and a carry in of 1 bit.  
The module outputs the summation of the three inputs to a N+1 size output.  
The module is desiged using a chain of full adders.  
The default size of N is 8 (N=8).

## Interface
The module has the following interface:
```verilog
    input [N-1:0] A       - First number input
    input [N-1:0] B       - Second number input
    input C_In            - Carry in input
    output [N:0] Out      - Summation output
```  
