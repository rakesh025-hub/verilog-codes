module two_bit_comparator_tb;

  reg [1:0] a, b;
  wire eq, lt, gt;

  two_bit_comparator uut (
    .a(a),
    .b(b),
    .eq(eq),
    .lt(lt),
    .gt(gt)
  );

  initial begin
  $monitor($time,"a=%b,b=%b,eq=%b,lt=%b,gt=%b",a,b,eq,lt,gt);
    $dumpfile("two_bit_comparator.vcd");
    $dumpvars(0, two_bit_comparator_tb);

    a = 2'b00;
    b = 2'b00;
    #10;
    a = 2'b01;
    b = 2'b00;
    #10;
    a = 2'b10;
    b = 2'b00;
    #10;
    a = 2'b11;
    b = 2'b00;
    #10;
    a = 2'b00;
    b = 2'b01;
    #10;
    a = 2'b01;
    b = 2'b01;
    #10;
    a = 2'b10;
    b = 2'b01;
    #10;
    a = 2'b11;
    b = 2'b01;
    #10;
    a = 2'b00;
    b = 2'b10;
    #10;
    a = 2'b01;
    b = 2'b10;
    #10;
    a = 2'b10;
    b = 2'b10;
    #10;
    a = 2'b11;
    b = 2'b10;
    #10;
    a = 2'b00;
    b = 2'b11;
    #10;
    a = 2'b01;
    b = 2'b11;
    #10;
    a = 2'b10;
    b = 2'b11;
    #10;
    a = 2'b11;
    b = 2'b11;
    #10;

    $finish;
  end

endmodule
