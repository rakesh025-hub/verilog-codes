module dff(D,clk,rst,q);
input D,clk,rst;
output reg q;

always @(posedge clk)

begin
if (rst==1'b0)
q<=1'b0;
else
q<=D;
end
endmodule