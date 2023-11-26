module comap_tb();
parameter WIDTH=4;
reg [WIDTH-1:0]A,B;
wire gt,lt,eq;

comparator  uut(A,B,gt,lt,eq);

initial
begin
$monitor($time,"A=%h,B=%h,gt=%b,lt=%b,eq=%b",A,B,gt,lt,eq);
#5;
A=4'b0000;
B=4'b0001;
#5;A=4'b0010;B=4'b0001;
#5;A=4'b0001;B=4'b0001;
#5;A=4'b1111;B=4'b0001;

#5;
A=4'b0000;
B=4'b0011;
#5;A=4'b0010;B=4'b0001;
#5;A=4'b0001;B=4'b0101;
#5;A=4'b1111;B=4'b1001;
end

endmodule