`timescale 1ns/1ns
`include "21MUX.v"

module mux21_tb;

wire out;
reg d0, d1, s;

mux21 wew(.Y(out), .D0(d0), .D1(d1), .S(s));

initial begin
    $dumpfile("mux21_tb.vcd");
    $dumpvars(0, mux21_tb);

    d0=1'b0;
    d1=1'b0;
    s=1'b0;
    #100 $finish;
end

always #40 d0=~d0;
always #20 d1=~d1;
always #10 s=~s;
always@(d0 or d1 or s)

$monitor("At time = %t, Y = %d", $time, out);

endmodule;