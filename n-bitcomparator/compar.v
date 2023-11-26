module comparator(A,B,gt,lt,eq);
parameter WIDTH=4;
input [WIDTH-1:0]A,B;
output reg gt,lt,eq;

always @(*)

begin
gt=0;lt=0;eq=0;
if (A>B)
gt=1'b1;
else if (A<B)
lt=1'b1;
else
eq=1'b1;
end

endmodule