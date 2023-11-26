module onebitram(
input wire write_enable,write_data,read_enable,
output reg read_data);

reg mem_bit;

always @(posedge write_enable or posedge read_enable)

begin
if(write_enable)
mem_bit<=write_data;
else if (read_enable)
read_data<=mem_bit;
end
endmodule