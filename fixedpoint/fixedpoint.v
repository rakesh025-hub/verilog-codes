module FixedPointAdder (
    input [7:0] a_integer,
    input [3:0] a_fractional,
    input [7:0] b_integer,
    input [3:0] b_fractional,
    output [7:0] result_integer,
    output [3:0] result_fractional
);

// Combine integer and fractional parts to create 12-bit fixed-point numbers
wire [11:0] a_fixed_point = {a_integer, a_fractional};
wire [11:0] b_fixed_point = {b_integer, b_fractional};

// Add the fixed-point numbers
wire [12:0] result_fixed_point = a_fixed_point + b_fixed_point;

// Separate the result back into integer and fractional parts
assign result_integer = result_fixed_point[11:4];
assign result_fractional = result_fixed_point[3:0];

endmodule