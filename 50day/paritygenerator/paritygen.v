module paritygenerator(in,out);
input [3:0]in;
output out;

assign out=^in;
endmodule