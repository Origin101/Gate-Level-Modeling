`timescale 1ns/1ns
`include "Carry.v"

module cla_tb;

    reg a, b, Cin;
    wire sum,carry;

cla uut(.a(a), .b(b), .Cin(Cin), .sum(sum), .carry(carry));

initial begin
    $dumpfile("carry_tb.vcd");
    $dumpvars(0, cla_tb);
    
    a = 1; b = 0; Cin = 1;
    #20;

    a = 1; b = 1; Cin = 1;
    #20;

    a = 1; b = 1; Cin = 1;
    #20;

    a = 0; b = 1; Cin = 0;
    #20;

    a = 1; b = 1; Cin = 1;
    #20;

    a = 0; b = 1; Cin = 1;
    #20;

    $monitor($time," Sum = %b, Carry = %b ",sum,carry);
     $display("test complete");
end

endmodule