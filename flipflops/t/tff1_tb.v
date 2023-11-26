module tff_tb;

  reg clk, rstn, t;
  wire q;

  tff uut (
    .clk(clk),
    .rstn(rstn),
    .t(t),
    .q(q)
  );

  initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, tff_tb);
    $monitor($time,"rstn=%b,t=%b,q=%b",rstn,t,q);
    clk = 1'b0;
    rstn = 1'b0;
    t = 1'b0;

    #10;
    rstn = 1'b1;
    #10;
    t = 1'b1;
    #10;
    t = 1'b0;
    #10;
    t = 1'b1;
    #10;
    $finish;
  end

  always #5 clk = ~clk;

endmodule
