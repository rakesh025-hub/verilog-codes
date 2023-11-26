
module sipo_tb();
reg si,clk,rst;
reg [3:0]temp;
wire [3:0]so;

sipo  uut(clk,si,rst,po);
/* initial
begin
clk=0;
forever #5 clk=~clk;
end
----
or 
*/
always #5 clk=~clk;

initial
begin
$monitor($time,"si=%b,rst=%b,temp=%b,so=%b",si,rst,temp,so);
clk=0;
#5; rst=0;
si=0;
#15; si=1;
#10; si=0;
#10; si=1;
#20; si=0;

$finish();
end
endmodule
