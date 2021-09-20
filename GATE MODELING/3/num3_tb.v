`timescale 1ns/1ns
`include "num3.v"

module circuit3_tb;

    reg A;
    reg B;
    reg C;
    wire X;

circuit3 wew(A, B, C, X);

initial begin
    $dumpfile("circuit3_tb.vcd");
    $dumpvars(0, circuit3_tb);

    A = 0; B = 0; C = 0;
    #20;

    A = 0; B = 0; C = 1;
    #20;

    A = 0; B = 1; C = 1;
    #20;

    A = 1; B = 1; C = 1;
    #20;

    $display("test complete 3");
end

endmodule