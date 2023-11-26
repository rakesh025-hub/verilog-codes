module bcdcounter_tb();
reg clk,clear;
reg [3:0]in;
wire [3:0]count;

bcdcounter uut(clk,clear,count);

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
$monitor($time,"clear=%b,in=%b,count=%b",clear,in,count);
clear=1'b1;
#5; 
in=4'b0011;
#5;
in=4'b0101;
#5;
clear=1'b0;
#5; 
in=4'b0000;

end

endmodule