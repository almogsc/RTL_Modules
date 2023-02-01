# Edge Detector Module

This module detects both the rising and falling edges of a given input

## Functionality
The module raises a 'rise' flag when a rising edge is detected.

The module raises a 'fall' flag when a falling edge is detected.
The module raises a 'rise_or_fall' flag when an edge is detected.

## Interface
```verilog
    input clk           - Module's clock
    input rst           - Module's reset
    input in            - The signal to detect it's edge
    output rise         - Rising edge detection
    output fall,        - Falling edge detection
    output rise_or_fall - Any edge detection
```
