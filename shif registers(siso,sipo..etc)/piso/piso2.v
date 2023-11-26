module ParallelInSerialOutShiftRegister #(
  parameter WIDTH = 8
) (
  input clk,
  input reset,
  input [WIDTH-1:0] din,
  output dout
);

  reg [WIDTH-1:0] shift_register;

  always @(posedge clk or negedge reset) begin
    if (reset) begin
      shift_register <= 0;
    end else begin
      shift_register <= {1'b0, shift_register[WIDTH-1:1]};
      shift_register[0] <= din[WIDTH-1];
    end
  end

  assign dout = shift_register[0];

endmodule
