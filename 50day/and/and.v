module and_gate(a,y);
input [3:0]a;
output [3:0]y;

assign y[0]=a[0]^y[1];
assign y[1]=a[1]^y[2];
assign y[2]=a[2]^a[3];
assign y[3]=a[3];
endmodule