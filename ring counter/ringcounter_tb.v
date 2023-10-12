module ring_tb();
parameter WIDTH=4;
reg clk,rst;
wire [WIDTH-1:0]count;

ringcounter uut(clk,rst,count);

always #5 clk<=~clk;

initial
begin
$monitor ($time,"count=%h",count);
clk<=0;
rst<=0;

#10 rst<=1;
end
initial #200 $finish();
endmodule