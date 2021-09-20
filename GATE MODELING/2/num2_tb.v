`timescale 1ns/1ns
`include "num2.v"

module circuit2_tb;

    reg I;
    reg M;
    reg R;
    reg L;
    wire E;

circuit2 wew(I, M, R, L, E);

initial begin
    $dumpfile("circuit2_tb.vcd");
    $dumpvars(0, circuit2_tb);

    I = 0; M = 0; R = 0; L = 0;
    #20;

    I = 0; M = 0; R = 0; L = 1;
    #20;

    I = 0; M = 0; R = 1; L = 1;
    #20;

    I = 0; M = 1; R = 1; L = 1;
    #20;

    I = 1; M = 1; R = 1; L = 1;
    #20;

    $display("test complete 2");
end

endmodule