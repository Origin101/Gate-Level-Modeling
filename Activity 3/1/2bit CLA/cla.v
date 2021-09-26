module CLAadder(Sum0,Sum1,Cout,a0,b0,a1,b1,Cin);
input a0,b0,a1,b1;
input Cin;
output Sum0,Sum1;
output Cout;
output c0;

wire p0,p1,g0,g1;
wire d0,d1,d2,c1,c2;

buf (c0,Cin);
xor (p0,a0,b0),(p1,a1,b1);
and (g0,a0,b0),(g1,a1,b1);
or (c1,g0,(c0&p0)), (c2,g1,(p0&p1&c0),(p1&g0));
xor (Sum0,p0,Cin), (Sum1,p1,c1);
buf (Cout,c2);

endmodule