`timescale 1ns/1ns
`include "num4.v"

module circuit4_tb;

    reg X;
    reg Y;
    reg Z;
    wire M;

circuit4 wew(X, Y, Z, M);

initial begin
    $dumpfile("circuit4_tb.vcd");
    $dumpvars(0, circuit4_tb);

    X = 0; Y = 0; Z = 0;
    #20;

    X = 0; Y = 0; Z = 1;
    #20;

    X = 0; Y = 1; Z = 1;
    #20;

    X = 1; Y = 1; Z = 1;
    #20;

    $display("test complete 4");
end

endmodule