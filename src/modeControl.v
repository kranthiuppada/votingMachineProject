`timescale 1ns / 1ps

module modeControl(
    input clock,
    input reset,
    input mode,
    input valid_vote_casted,
    input [7:0] candidate1_vote,
    input [7:0] candidate2_vote,
    input [7:0] candidate3_vote,
    input [7:0] candidate4_vote,
    input candidate1_button_press,
    input candidate2_button_press,
    input candidate3_button_press,
    input candidate4_button_press,
    output reg [7:0] leds
);

    always @(posedge clock) begin
        if (reset)
            leds <= 8'h00;
        else if (mode == 0)
            leds <= (valid_vote_casted) ? 8'hFF : 8'h00;
        else begin
            if (candidate1_button_press)
                leds <= candidate1_vote;
            else if (candidate2_button_press)
                leds <= candidate2_vote;
            else if (candidate3_button_press)
                leds <= candidate3_vote;
            else if (candidate4_button_press)
                leds <= candidate4_vote;
        end
    end
endmodule

