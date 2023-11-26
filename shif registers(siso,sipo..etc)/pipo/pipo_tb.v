module pipo_tb();
reg clk,rst;
reg [3:0]pi;
wire [3:0]po;

pipo  uut(clk,rst,pi,po);


initial
begin
forever #5 clk=~clk;
end

initial
begin
$monitor($time,"pi=%b,,po=%b",pi,po);

clk=0;
rst=0;

pi=4'b0000;#10;
pi=4'b0001;#10;
pi=4'b0010;#10;
pi=4'b0101;#10;
pi=4'b1001;#10;
pi=4'b0111;#10;
$finish ();
end
endmodule