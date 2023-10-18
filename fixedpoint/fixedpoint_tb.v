module FixedPointAdderTestbench;

reg [7:0] a_integer, b_integer;
reg [3:0] a_fractional, b_fractional;
wire [8:0] result_integer; // Update the width to 8 bits
wire [3:0] result_fractional; // Keep this width at 4 bits
reg [7:0] expected_integer;
reg [3:0] expected_fractional;
reg success; // Flag to indicate test success

FixedPointAdder uut (
    .a_integer(a_integer),
    .a_fractional(a_fractional),
    .b_integer(b_integer),
    .b_fractional(b_fractional),
    .result_integer(result_integer),
    .result_fractional(result_fractional)
);

initial begin
    // Initialize test inputs
    a_integer = 2;
    a_fractional = 5;
    b_integer = 1;
    b_fractional = 10;

    // Set the expected result
    expected_integer = 4;
    expected_fractional = 1; // 0.125 in fixed-point represented as 1 in 4-bit fractional part

    // Wait a bit for the computation to complete (simulation only)
    #10;

    // Compare the result to the expected result
    if (result_integer == expected_integer && result_fractional == expected_fractional) begin
        $display("Test PASSED. Result: %d.%d", result_integer, result_fractional);
        success = 1;
    end else begin
        $display("Test FAILED. Expected: %d.%d, Got: %d.%d", expected_integer, expected_fractional, result_integer, result_fractional);
        success = 0;
    end

    // Finish the simulation
    $finish;
end

endmodule