module srff_tb();
reg clk,rst;
reg s,r;
wire q;

srff uut(.clk(clk),.rst(rst),.s(s),.r(r),.q(y),.q_bar(y_bar));

always #5 clk=~clk;

initial
begin
$monitor($time,"s=%b,r=%b,y=%b,y_bar=%b",s,r,y,y_bar);
clk=0;
#5 rst=1;
#5 rst=0;
#5 
{s,r}=2'b00;
#5 {s,r}=2'b01;
#5 {s,r}=2'b10;
#5 {s,r}=2'b11;

$finish();
end
endmodule