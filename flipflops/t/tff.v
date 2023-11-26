module tff(clk,rst,t,q,q_bar);
input clk;
input rst;
input t;
output reg q;
output q_bar;


always @(posedge clk)

begin
if(!rst)
q<=1'b0;
else
 if(t==1)
 q=~q;
 else
 q=q;
end
assign q_bar=~q;
endmodule