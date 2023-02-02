# Adders

In this repository there are designs of:  
'Half-Adder'  
'Full-Adder'  

## Functionality

The 'Half-Adder' module adds 2 bits together and outputs a binary represntation of how many ones are within the 2 bits.  
The 'Full-Adder' module adds 3 bits tohether and outputs a binary represntation of how many ones are within the 3 bits. This module is designed using 2 'Half-Adder' submodules.  

## Interface
The 'Half-Adder' has the following interface:
```verilog
    input a         - First bit input
    input b         - Second bit input
    output sum      - Is on if only 1 input is on
    output carry    - Is on if the 2 bits are on
```  
The 'Full-Adder' has the following interface:
```verilog
    input a         - First bit input
    input b         - Second bit input
    input cin       - Third bit input
    output sum      - Is on if there is an odd amount for on input bits
    output cout     - Is on if 2 or more input bits are on
```  
