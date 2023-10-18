module bin_to_decimal (
    input wire [5:0] binary_input,
    output wire [5:0] decimal_output
);

    assign decimal_output = binary_input[0] * 1 +
                            binary_input[1] * 2 +
                            binary_input[2] * 4 +
                            binary_input[3] * 8 +
                            binary_input[4] * 16 +
                            binary_input[5] * 32;

endmodule
