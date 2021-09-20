module circuit5 (input A, B, output sum, carry);
    wire w1;
    // w1 = nand(A,B)
    wire w2;
    // w2 = or(A,B)

    nand (w1,A,B);
    or (w2,A,B);
    and (sum,w1,w2);
    and (carry,A,B);
    
endmodule