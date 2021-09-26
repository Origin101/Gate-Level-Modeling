`timescale 1ns/1ns
`include "cla.v"

module cla_tb;

    reg a0, b0, a1, b1;
    reg Cin;
    wire Sum0,Sum1;
    wire Cout;

CLAadder uut(.a0(a0), .b0(b0), .a1(a1), .b1(b1), .Cin(Cin), .Sum0(Sum0), .Cout(Cout));

initial begin
    $dumpfile("cla_tb.vcd");
    $dumpvars(0, cla_tb);
    
    a0 = 0; b0 = 0; a0 = 0; b1 = 0; Cin = 0;
    #20;

    a0 = 1; b0 = 0; a1 = 0; b1 = 0; Cin = 0;
    #20;

    a0 = 1; b0 = 0; a1 = 1; b1 = 1; Cin = 1;
    #20;

    a0 = 0; b0 = 0; a1 = 0; b1 = 0; Cin = 0;
    #20;

    a0 = 0; b0 = 1; a1 = 0; b1 = 1; Cin = 1;
    #20;

     a0 = 0; b0 = 0; a1 = 0; b1 = 1; Cin = 1;
    #20;
    $monitor($time," Sum0 = %b, Sum2 = %b, Cout = %b ",Sum0,Sum1,Cout);
     $display("test complete");
end

endmodule