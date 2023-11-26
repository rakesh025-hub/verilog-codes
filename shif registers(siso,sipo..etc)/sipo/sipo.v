module sipo(clk,si,rst,po);
input clk,si,rst;
output [3:0]po;

reg [3:0]temp;

always @(posedge clk)

begin
if(rst)
begin
temp<=4'b0000;
end
else
begin                        /* #or-- temp<=temp>>1; temp[0]<=si;  */
temp[0]<=si;
temp[1]<=temp[0];
temp[2]<=temp[1];
temp[3]<=temp[2];
end
end
assign po=temp;
endmodule