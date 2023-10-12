module ringcounter(clk,rst,count);
parameter WIDTH=4;
input clk,rst;
output reg [WIDTH-1:0]count;

always@(posedge clk)
begin
if(rst)
count<={count[0],count[WIDTH-1:1]};
else
count<=4'b0001;
end
endmodule