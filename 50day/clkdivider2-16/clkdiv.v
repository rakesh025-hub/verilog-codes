module clockdivider(clk,rst,count,cd2,cd4,cd8,cd16);
input clk,rst;
output [3:0]count;
reg [3:0]count;
output reg cd2,cd4,cd8,cd16;

always @(posedge clk)
begin
if(rst==0)
count=4'b0000;
else
count=count+1;
cd2=count[0];
cd4=count[1];
cd8=count[2];
cd16=count[3];
end
endmodule