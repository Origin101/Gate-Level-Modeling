module circuit1 (input A, B, C, D, output X);
    wire AB;
    wire Z;
    // Z = C'+D'
    wire Y;
    // Y = AB(C'+D')

    and (AB,A,B);
    nor (Z,C,D);
    and (Y,AB,Z);
    nand (X,AB,Y);
    
endmodule