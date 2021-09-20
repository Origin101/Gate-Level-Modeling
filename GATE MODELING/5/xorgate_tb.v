`timescale 1ns/1ns
`include "xorgate.v"

module xor_tb ();

    reg A, B;
    wire C;

    circuit7 wew (A, B, C);

    initial begin
        
        $dumpfile("xor_tb.vcd");
        $dumpvars(0, xor_tb);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
    end
    
endmodule