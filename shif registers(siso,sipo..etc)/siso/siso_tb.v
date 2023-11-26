module sisoreg_tb();
reg sin,clk,clear;
reg [3:0]temp;
wire so;

sisoreg  uut(sin,clk,clear,so);
/* initial
begin
clk=0;
forever #5 clk=~clk;
end

or 
*/
always #5 clk=~clk;

initial
begin
$monitor($time,"sin=%b,clear=%b,temp=%b,so=%b",sin,clear,temp,so);
clk=0;
#5; clear=0;
sin=0;
#15; sin=1;
#10; sin=0;
#10; sin=1;
#20; sin=0;

$finish();
end
endmodule
