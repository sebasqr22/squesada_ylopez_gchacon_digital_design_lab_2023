module seven_segment_display (
    input wire [7:0] data,        
    output wire [6:0] seg         // Salida de 7 segmentos
);

    // Tabla de conversión para mostrar dígitos en un display de 7 segmentos
    reg [6:0] seg_data [15:0];
    
    // Inicialización de la tabla de conversión
    initial begin
        // 7'babcdefg
        // a: bit 0, b: bit 1, c: bit 2, d: bit 3, e: bit 4, f: bit 5, g: bit 6
        seg_data[0] = 7'b1000000;  // 0
        seg_data[1] = 7'b1111001;  // 1
        seg_data[2] = 7'b0100100;  // 2
        seg_data[3] = 7'b0110000;  // 3
        seg_data[4] = 7'b0011001;  // 4
        seg_data[5] = 7'b0010010;  // 5
        seg_data[6] = 7'b0000010;  // 6
        seg_data[7] = 7'b1111000;  // 7
        seg_data[8] = 7'b0000000;  // 8
        seg_data[9] = 7'b0011000;  // 9
        // Agregar más conversiones si es necesario
    end

    // Mostrar el valor de data en el display de siete segmentos
    assign seg = seg_data[data];

endmodule
