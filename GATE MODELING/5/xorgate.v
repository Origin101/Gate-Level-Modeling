module circuit7 (input A, B, output C);
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
    or (C,Z,W);
    
endmodule