`timescale 1ns / 1ns
`include "bytecomp.v"

module bytecomparator_tb;

reg[7:0]a,b;
reg en;

bytecomparator wew(.f(f),.a(a),.b(b),.en(en));

initial begin
    $dumpfile("bytecomparator_tb.vcd");
    $dumpvars(0, bytecomparator_tb);

a = 8'b00000000;

b = 8'b00000000;

en = 1'b0;

end

always

#2 en = 1'b1;

always

begin

 #2 a = a+1'b1;

 #2 b = b+1'b0;

end

initial $monitor($time," en = %b , a = %b ,b = %b ,f = %b ",en,a,b,f);

initial 
#30 
$stop;

endmodule