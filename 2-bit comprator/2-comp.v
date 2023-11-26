module two_bit_comparator (
  input [1:0] a, b
  output reg eq, lt, gt
);

  always @(a, b) begin
    eq <= (a == b);
    lt <= (a < b);
    gt <= (a > b);
  end

endmodule
