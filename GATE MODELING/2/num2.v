module circuit2 (input I, M, R, L, output E);
    wire X;
    // X = !M
    wire Y;
    // Y = I(!M)
    wire Z;
    // Z = (!M)(R)(L)

    not (X,M);
    and (Y,I,X);
    and (Z,X,R,L);
    or (E,Y,Z);
    
endmodule