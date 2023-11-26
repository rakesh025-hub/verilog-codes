module sample(A,B,C,D,E,F,Y);
input A,B,C,D,E,F;
output Y;
wire w1,w2,w3;

nand G1 (w1,A,B);
and G2 (w2,C,~B,D);
xor G3 (w3,E,F);
nand G4 (Y,w1,w2,w3);

endmodule
