module bintoonehotenc(bin_i,onehot_o);
parameter BIN_W=4;
parameter ONEHOT_W=16;
input [BIN_W-1:0]bin_i;
output [ONEHOT_W-1:0]onehot_o;

assign onehot_o=1'b1<<bin_i;

endmodule