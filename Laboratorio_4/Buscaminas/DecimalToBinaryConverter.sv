module DecimalToBinaryConverter(
    input int decimal_input,
    output [31:0] binary_output
);

integer i;
int remainder;
int decimal = decimal_input;

always_comb begin
    binary_output = '0; // Inicializa el resultado a cero

    for (i = 31; i >= 0; i = i - 1) begin
        remainder = decimal % 2; // Obtiene el residuo de la división por 2
        binary_output[i] = remainder; // Almacena el residuo en el resultado
        decimal = decimal / 2; // Divide el número decimal por 2
    end
end

endmodule