module bytecomparator( a, b, en, f); 

input [7:0] a, b;
input en;
output f;
 
wire [7:0] c;
wire d;

  xor g1 [7:0] (c,a,b);
  or (d,c);
  notif1 notif_1(f,d,en);

endmodule