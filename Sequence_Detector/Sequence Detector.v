module Sequence_Detector(
    input clk,
    input rst,
    input in,
    output out
    );
    parameter IDLE = 0,
              S1    = 1,
              S10   = 2,
              S101  = 3,
              S1011 = 4;
    reg [2:0]cur_state, next_state;
    
    assign out = rst && cur_state == 4 ? 1 : 0;
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            cur_state <= IDLE;
        else
            cur_state <= next_state;
    end
    
    always @(*)
    begin
        next_state = cur_state;
        case(cur_state)
        IDLE: next_state = in == 1 ? S1   : IDLE; // system has nothing in it
        S1:   next_state = in == 0 ? S10  : S1;   // system has 1 in it
        S10:  next_state = in == 1 ? S101 : IDLE; // system has 10 in it
        S101: next_state = in == 1 ? S1011: IDLE; // system has 101 in it
        S1011:next_state = in == 1 ? S1   :IDLE;
        default: next_state = cur_state;
        endcase
    end
endmodule
