/*
module piso(clk,rst,pi,so);
input clk,rst,pi;
output [3:0]so;

reg [3:0]temp;

always @(posedge clk or posedge rst)

begin
if(rst)
begin
temp<=4'b0;
end
else
begin
temp[0]<=pi;
temp[1]<=temp[0];
temp[2]<=temp[1];
temp[3]<=temp[2];
end
end
assign so=temp[3];
endmodule


-----------------------------------or---------------------------------

module piso(clk,rst,pi,so);
input clk,rst,pi;
output [3:0]so;

reg [3:0]temp;

always @(posedge clk or posedge rst)

begin
if(rst)
begin
temp<=4'b0;
end
else
begin
temp=temp>>1;
temp[0]<=pi;
end
end
assign so=temp[3];

endmodule
*/





module PISO_shift_register (
    input wire clk, reset, parallel_in,
    output wire serial_out );

reg [3:0] shift_reg;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        shift_reg <= 4'b0000; 
    end else begin
        shift_reg[0] <= parallel_in;
        shift_reg[1] <= shift_reg[0];
        shift_reg[2] <= shift_reg[1];
        shift_reg[3] <= shift_reg[2];
    end
end

assign serial_out = shift_reg[3];

endmodule


