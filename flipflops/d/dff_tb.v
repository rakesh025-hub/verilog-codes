module dff_tb();
reg D,clk,rst;
wire q;

dff dut(D,clk,rst,q);
initial
begin
clk=0;
forever #10 clk=~clk;
end
initial
begin
$monitor($time,"rst=%b,D=%b,q=%b",rst,D,q);
rst=1'b1;
#10;
D=1'b0;
#10;
D=1'b1;
#10;
D=1'b0;
#10;
D=1'b1;

end
endmodule