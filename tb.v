`timescale 1ns / 1ps

module seven_segment_display_tb;

reg  [3:0] bcd;      // Test input
wire [6:0] seg;      // Output from DUT

// Instantiate Design Under Test (DUT)
seven_segment_display uut (
    .bcd(bcd),
    .seg(seg)
);

initial begin

    // Monitor input and output values
    $monitor("Time=%0t BCD=%d SEG=%b",
              $time, bcd, seg);

    // Apply test inputs from 0 to 9
    bcd = 4'd0; #10;
    bcd = 4'd1; #10;
    bcd = 4'd2; #10;
    bcd = 4'd3; #10;
    bcd = 4'd4; #10;
    bcd = 4'd5; #10;
    bcd = 4'd6; #10;
    bcd = 4'd7; #10;
    bcd = 4'd8; #10;
    bcd = 4'd9; #10;

    // Test invalid BCD values
    bcd = 4'd10; #10;
    bcd = 4'd11; #10;
    bcd = 4'd12; #10;
    bcd = 4'd13; #10;
    bcd = 4'd14; #10;
    bcd = 4'd15; #10;

    // End simulation
    $finish;

end

endmodule
