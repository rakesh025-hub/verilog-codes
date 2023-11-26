module piso_tb();
reg clk,rst,pi;
wire [3:0]so;
reg [3:0]temp;

piso  uut(clk,rst,pi,so);


initial
begin
forever #5 clk=~clk;
end

initial
begin
$monitor($time,"pi=%b,temp=%b,so=%b",pi,temp,so);
clk=0;
rst=0;
pi=0;
pi=1;
#10;pi=0;
#10;pi=1;
#10;pi=0;
#10;pi=0;
#10;pi=1;
#10;pi=0;
$finish ();

end
endmodule