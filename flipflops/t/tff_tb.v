module tff_tb();
reg clk,rst,t;
wire q;
wire q_bar;

tff uut(.clk(clk),.rst(rst),.t(t),.q(q),.q_bar(q_bar));

always #5 clk<=~clk;
initial
begin
$monitor($time,"rst=%b,t=%b,q=%b,q_bar=%b",rst,t,q,q_bar);

clk<=0;
rst<=0;
t<=1'b0;

#5;
rst<=1;

#5; 
t<=1'b0;
#5; 
t<=1'b1;
#5; 
t<=1'b0;
#5; 
t<=1'b1;
#5; 
t<=1'b0;
#5; 
t<=1'b1;


$finish();
end
endmodule 