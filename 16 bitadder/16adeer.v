module adder16(A,B,Cin,sum,Cout);
input[15:0]A,B;
input Cin;
output[15:0]sum;
output Cout;
wire[16:0]c;

assign c[0]=Cin;
assign Cout=c[16];

assign sum[15:0]= (A[15:0] ^ B[15:0]) ^ c[15:0];
assign c[16:0]= (A[15:0] & B[15:0]) | (A[15:0] ^ B[15:0]) & c[15:0];
endmodule