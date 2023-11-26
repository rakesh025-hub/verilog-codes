module jkff_tb();
reg clk,rst,j,k;
wire q,qbar;


jkff  uut(clk,rst,j,k,q,qbar);

initial
begin
forever #5 clk=~clk;
end
initial
begin
$monitor($time,"j=%b,k=%b,q=%b,qbar=%b",j,k,q,qbar);
clk<=0;
rst<=0;
j=0;k=0;
#10; 
j=0;k=1;
#10; 
j=1;k=0;
#10; 
j=1;k=0;
$finish ();
end
endmodule