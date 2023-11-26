module bcdcounter(clk,clear,count);
input clk,clear;
reg [3:0]in;
output reg [3:0]count;

always @(posedge clk)

begin
if(clear)
begin
in<=4'b0000;
count<=4'b0000;
end
else
begin
in=in+1;
if (in==4'b1001)
begin
in<=4'b0000;
end
count<=in;
end
end
endmodule


