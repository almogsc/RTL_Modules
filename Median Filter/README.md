# Median Filter

In this repository there is the design of a median filter of a 3 by 3 matrix with asynchronous reset.  

## Functionality

The module receives an input of 9 pixel, i.e. {I(x+i,y+i)| i in (-1,0,1)}. The module outputs the median of the 9 pixels.
The module uses a sub-module 'Min_Max_8' to sort the 8 inputs in an ascending order and determines if the 9th element is the median between the other sorted elements.  

## Interface
The 'Median_Fitler' has the following interface:
```verilog
    input clk                       - Module's clock
    input rst                       - Module's reset
    input unsigned [7:0] xm1ym1     - I(X-1,Y-1) Pixel input
    input unsigned [7:0] xm1y0      - I(X-1,Y)   Pixel input
    input unsigned [7:0] xm1yp1     - I(X-1,Y+1) Pixel input
    input unsigned [7:0] x0ym1      - I(X,Y-1)   Pixel input
    input unsigned [7:0] x0y0       - I(X,Y)     Pixel input
    input unsigned [7:0] x0yp1      - I(X,Y+1)   Pixel input
    input unsigned [7:0] xp1ym1     - I(X+1,Y-1) Pixel input
    input unsigned [7:0] xp1y0      - I(X+1,Y)   Pixel input
    input unsigned [7:0] xp1yp1     - I(X+1,Y+1) Pixel input
    output unsigned [7:0] median    - Median output
```  
