module jkff(clk,rst,j,k,q,qbar);
input j,k,clk,rst;
output reg q;
output qbar;
always @(posedge clk)

begin
if(rst)
q<=1'b0;
else
case({j,k})
2'b00 : q<=q;
2'b01 : q<=1'b0;
2'b10 : q<=1'b1;
2'b11 : q<=~q;
endcase
end
assign qbar=~q;
endmodule