module circuit4 (input X, Y, Z, output M);
    wire w1;
    // w1 = Y'
    wire w2;
    // w2 = XY'

    not (w1,Y);
    and (w2,X,w1);
    or (M,w2,Z);
    
endmodule