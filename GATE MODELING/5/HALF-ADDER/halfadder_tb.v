`timescale 1ns/1ns
`include "halfadder.v"

module circuit5_tb;

    reg A;
    reg B;
    wire sum;
    wire carry;

circuit5 wew(A, B, sum, carry);

initial begin

    $monitor ("time=%d:%b   %b  SUM = %b\n",$time,A,B,sum,carry);
    $dumpfile("circuit5_tb.vcd");
    $dumpvars(0, circuit5_tb);

    A = 0; B = 0;
    #20;

    A = 0; B = 1;
    #20;

    A = 1; B = 1;
    #20;

    $display("test complete HALF-ADDER");
end

endmodule