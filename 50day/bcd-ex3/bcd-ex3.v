module bcd(a,b,c,d,r);
input a,b,c,d;
output[4:0]r;

assign r[4]=(a&b)|(a&c);
assign r[3]=(a&~b&~c);
assign r[2]=(~a&b)|(b&c);
assign r[1]=(~a&c)|(a&b&~c);
assign r[0]=d;
endmodule