module mux(in,sel,y);
input [1:0]in;
input sel;
output reg y;

assign y=sel ? in[1]:in[0];
/* begin
if(sel)
y=in[1];
else
y=in[0];
end */
endmodule