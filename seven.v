`timescale 1ns / 1ps

// Seven Segment Display Converter
// Converts 4-bit BCD input (0-9) to Seven Segment Display output
// Segment order: {a,b,c,d,e,f,g}
// Active High Display

module seven_segment_display(
    input  [3:0] bcd,      // 4-bit BCD input
    output reg [6:0] seg   // Seven segment output
);

always @(*) begin
    case(bcd)

        // Display digit 0
        4'd0: seg = 7'b1111110;

        // Display digit 1
        4'd1: seg = 7'b0110000;

        // Display digit 2
        4'd2: seg = 7'b1101101;

        // Display digit 3
        4'd3: seg = 7'b1111001;

        // Display digit 4
        4'd4: seg = 7'b0110011;

        // Display digit 5
        4'd5: seg = 7'b1011011;

        // Display digit 6
        4'd6: seg = 7'b1011111;

        // Display digit 7
        4'd7: seg = 7'b1110000;

        // Display digit 8
        4'd8: seg = 7'b1111111;

        // Display digit 9
        4'd9: seg = 7'b1111011;

        // Invalid BCD inputs (10-15)
        default: seg = 7'b0000000;

    endcase
end

endmodule