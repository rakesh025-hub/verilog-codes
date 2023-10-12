module and_tb();
reg [3:0]a;
wire [3:0]y;
integer i;

and_gate DUT(a,y);

initial
begin
$monitor($time,"a=%b,y=%b",a,y);
#5 a=4'b0000;
#5 a=4'b0001;
#5 a=4'b0011;
#5 a=4'b0010;
#5 a=4'b0110;
#5 a=4'b0111;
#5 a=4'b0101;
#5 a=4'b0100;
#5 a=4'b1100;
end

endmodule