module full_adder(sum,carry,a,b,cin);
input a, b, cin;
output carry, sum;

wire s, j, k;

xor #(3) (s,a,b);
xor #(1,4) (sum,s,cin); 
and #(2,4) (j,a,b);
and #(3,4) (k,cin,s);
or #(3,4) (carry,k,j);

endmodule