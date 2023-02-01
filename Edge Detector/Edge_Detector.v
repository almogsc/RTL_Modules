module Edge_Detector(
    input clk,
    input rst,
    input in,
    output rise,
    output fall,
    output rise_or_fall
    );
    reg D_out;
    
    always @(posedge clk or negedge rst)
    begin
        if(!rst)
            D_out <= 0;
        else
            D_out <= in;
    end
    
    assign rise = in & !D_out;
    assign fall = !in & D_out;
    assign rise_or_fall = rise | fall;
endmodule
