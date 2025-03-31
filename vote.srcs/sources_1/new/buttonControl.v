`timescale 1ns / 1ps

module buttonControl(
    input clock,
    input reset,
    input button,
    output reg valid_vote
);

    reg [30:0] counter;

    always @(posedge clock) begin
        if (reset)
            counter <= 0;
        else begin
            if (button && counter < 10)
                counter <= counter + 1;
            else if (!button)
                counter <= 0;
        end
    end

    always @(posedge clock) begin
        if (reset)
            valid_vote <= 1'b0;
        else if (counter == 10)
            valid_vote <= 1'b1;
        else
            valid_vote <= 1'b0;
    end
endmodule

