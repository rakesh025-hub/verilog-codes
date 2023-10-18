module adder16_tb();
reg[15:0]A,B;
reg Cin;
wire[15:0]sum;
wire Cout;
 
adder16 DUT(A,B,Cin,sum,Cout);

initial
begin
$monitor($time,"A=%h,B=%h,sum=%h,Cin=%b,Cout=%b",A,B,sum,Cin,Cout);
#5 A='h8fff; B='h8000;Cin=1'b0;
#200 $finish;
end
always
begin
#60 A='h52ff; #60 A='hA903;
end
always
begin
#20 B='h520A; #20 B='h8903;
end
always #10 Cin = ~Cin;
endmodule