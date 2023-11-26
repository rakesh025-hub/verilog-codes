module ShiftRegisterTest;

  reg clk;
  reg reset;
  reg [7:0] din;
  wire dout;

  ParallelInSerialOutShiftRegister #(
    .WIDTH(8)
  ) shift_register (
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout(dout)
  );

  initial begin
    clk <= 0;
    reset <= 1;
    din <= 8'b10100101;
    #10 reset <= 0;
  end

  always begin
    #5 clk <= ~clk;
  end

  initial begin
    $monitor("dout = %b", dout);
  end

endmodule
