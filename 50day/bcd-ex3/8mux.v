module mux(in,s,y);
input [7:0]in;
input [2:0]s;
output y;

assign y=in[s];
endmodule