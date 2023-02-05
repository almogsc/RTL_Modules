module FSM(
    input clk,
    input rst,
    input [1:0] in,
    output reg[2:0] out
    );
    parameter S1 = 0,
              S2 = 1,
              S3 = 2,
              S4 = 3,
              S5 = 4,
              S6 = 5,
              S7 = 6,
              S8 = 7;
    reg [2:0]cur_state, next_state;
    
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            cur_state = S1;
        else
            cur_state = next_state;
    end
    
    always @(*)
    begin
        next_state = cur_state;
        case(cur_state)
        S1: begin
                next_state = in == 0 ? S1 : in == 1 ? S4 : in == 2 ? S2 : S1;
                out        = in == 0 ? 2  : in == 1 ? 6  : in == 2 ? 7  : 1;
            end
        S2: begin
                next_state = in == 0 ? S5 : in == 1 ? S7 : in == 2 ? S5 : S2;
                out        = in == 0 ? 2  : in == 1 ? 3  : in == 2 ? 6  : 0;
            end
        S3: begin
                next_state = in == 0 ? S6 : in == 1 ? S5 : in == 2 ? S1 : S8;
                out        = in == 0 ? 5  : in == 1 ? 5  : in == 2 ? 4  : 1;
            end
        S4: begin
                next_state = in == 0 ? S1 : in == 1 ? S7 : in == 2 ? S5 : S1;
                out        = in == 0 ? 5  : in == 1 ? 5  : in == 2 ? 1  : 1;
            end
        S5: begin
                next_state = in == 0 ? S6 : in == 1 ? S8 : in == 2 ? S8 : S3;
                out        = in == 0 ? 0  : in == 1 ? 5  : in == 2 ? 3  : 3;
            end
        S6: begin
                next_state = in == 0 ? S8 : in == 1 ? S8 : in == 2 ? S6 : S2;
                out        = in == 0 ? 0  : in == 1 ? 2  : in == 2 ? 3  : 0;
            end
        S7: begin
                next_state = in == 0 ? S3 : in == 1 ? S7 : in == 2 ? S4 : S7;
                out        = in == 0 ? 0  : in == 1 ? 7  : in == 2 ? 0  : 5;
            end
        S8: begin
                next_state = in == 0 ? S8 : in == 1 ? S3 : in == 2 ? S8 : S3;
                out        = in == 0 ? 1  : in == 1 ? 5  : in == 2 ? 5  : 7;
            end
        default : begin
                  next_state = cur_state;
                  out = 0;
                  end    
        endcase
    end
endmodule
