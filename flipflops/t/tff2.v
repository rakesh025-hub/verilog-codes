module tff (
  input clk,
  input rstn,
  input t,
  output reg q
);

  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      q <= 1'b0;
    end else begin
      q <= t ? ~q : q;
    end
  end

endmodule
