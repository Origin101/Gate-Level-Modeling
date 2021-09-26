`timescale 1ns/1ns
`include "delay.v"

module full_adder_tb;

    reg a, b, cin;
    wire carry;
    wire sum;

full_adder uut(.a(a), .b(b), .cin(cin), .carry(carry), .sum(sum));

initial begin
    $monitor ("time=%g,a=%b ,b=%b,Cin=%B, CARRY =%b, SUM = %b",$time,a,b,cin,sum,carry);
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);

    a = 0; b = 0; cin = 1;
    #5;

    a = 1; b = 0; cin = 0;
    #5;

    a = 1; b = 1; cin = 1;
    #5;

    a = 0; b = 1; cin = 0;
    #5;

    a = 0; b = 1; cin = 1;
    #5;

    a = 0; b = 0; cin = 0;
    #5;

    a = 1; b = 1; cin = 0;
    #5;

    $display("test complete");
end

endmodule