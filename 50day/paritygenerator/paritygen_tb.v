module paritygen_tb();
reg [3:0]in;
wire out;

paritygenerator uut(in,out);

initial
begin
$monitor($time,"out=%b",out);
in=4'b0000;
#10;
in=4'b0001;
#10; 
in=4'b0010;
#10; 
in=4'b0011;
#10; 
in=4'b0100;
#10;
in=4'b0101;
#10;
in=4'b0110;
#10;
in=4'b0111;
#10;
end 
endmodule