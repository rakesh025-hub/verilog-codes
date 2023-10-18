module bintoone();
parameter bin_width=4;
parameter onehot_width=16;
reg [bin_width-1:0]bin_i;
wire [onehot_width-1:0]onehot_o;

bintoonehotenc  dut(bin_i,onehot_o);

initial
begin
$monitor ("binary value=%b,one hot enc value=%b",bin_i,onehot_o);
#10;
bin_i=4'b0000;
#10;
bin_i=4'b0001;
#10;
bin_i=4'b0010;
#10;
bin_i=4'b0011;
#10;
bin_i=4'b0100;
#10;
bin_i=4'b0101;
#10;
bin_i=4'b0110;
#10;
bin_i=4'b0111;
#10;
bin_i=4'b1000;
#10;
bin_i=4'b1001;
#10;
bin_i=4'b1010;
#10;
bin_i=4'b1011;
#10;
bin_i=4'b1100;
#10;
bin_i=4'b1101;
#10;
bin_i=4'b1110;
#10;
bin_i=4'b1111;

end
endmodule