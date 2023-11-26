module sisoreg(sin,clk,clear,so);
input sin,clk,clear;
output so;
reg [3:0] temp;

always @(posedge clk)
begin
if(clear)
begin
temp<=4'b0000;
end
else
begin
temp<=temp >>1;
temp[3]<=sin;
end
end
assign so=temp[0];
endmodule
