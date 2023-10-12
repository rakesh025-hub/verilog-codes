module bcd_tb();
reg a,b,c,d;
wire [4:0]r;
integer i;

bcd uut(a,b,c,d,r);

initial
begin
$monitor($time,"a=%b,b=%b,c=%b,b=%b,r=%b",a,b,c,d,r);
{a,b,c,d}=4'b0000;
end
initial
begin
for(i=0;i<=15;i=i+1)
begin
{a,b,c,d}=i;
#5;
end 
end
initial $finish();
endmodule