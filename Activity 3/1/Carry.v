module cla(a,b,Cin,sum,carry);
input a,b,Cin;
output c0,sum,carry;

wire p,g,d;

buf (c0,Cin);
xor (p,a,b);
and (g,a,b);
and (d,c0,p);
xor (sum,p,c0);
or (carry,g,d);


endmodule