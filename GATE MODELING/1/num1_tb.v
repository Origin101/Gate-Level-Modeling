`timescale 1ns/1ns
`include "num1.v"

module circuit1_tb;

    reg A;
    reg B;
    reg C;
    reg D;
    wire X;

circuit1 wew(A, B, C, D, X);

initial begin
    $dumpfile("circuit1_tb.vcd");
    $dumpvars(0, circuit1_tb);

    A = 0; B = 0; C = 0; D = 0;
    #20;

    A = 0; B = 0; C = 0; D = 1;
    #20;

    A = 0; B = 0; C = 1; D = 1;
    #20;

    A = 0; B = 1; C = 1; D = 1;
    #20;

    A = 1; B = 1; C = 1; D = 1;
    #20;

    $display("test complete");
end

endmodule