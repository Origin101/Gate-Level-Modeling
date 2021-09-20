module circuit5 (input A, B, output sum, carry);
    wire W;
    // W = AB
    wire X;
    // X = B'
    wire Y;
    // Y = A'
    wire Z;
    // Z = A'B

    not (X,B);
    not (Y,A);
    and (W,A,X);
    and (Z,B,Y);
    or (sum,Z,W);
    
    and (carry,A,B);
    
endmodule