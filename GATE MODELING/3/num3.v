module circuit3 (input A, B, C, output X);
    wire Z;
    // X = A^B
    wire Y;
    // Y = (BC)+(BC)'

    xor (Z,A,B);
    xnor (Y,B,C);
    and (X,Z,Y,C);
    
endmodule