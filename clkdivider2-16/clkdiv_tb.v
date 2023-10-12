module clkdiv_tb();
reg clk,rst;
wire [3:0]count;
wire cd2,cd4,cd8,cd16;

clockdivider uut(clk,rst,count,cd2,cd4,cd8,cd16);
always #5 clk= ~clk;
initial
begin
clk=0;
$monitor($time,"count=%h,cd2=%b,cd4=%b,cd8=%b,cd16=%b",count,cd2,cd4,cd8,cd16);

end
initial
begin
rst=0;
#10 
rst=1;
end
endmodule