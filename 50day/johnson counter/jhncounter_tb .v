module jhn_tb();
parameter WIDTH=4;
reg clk,rst;
wire [WIDTH-1:0]count;

johnsoncounter uut(clk,rst,count);
always #5 clk=~clk;
initial
begin
clk<=0;
$monitor($time,"count=%h",count);
end

initial
begin
rst<=0;
#10 rst<=1;
end
initial #200 $finish() ;
endmodule

