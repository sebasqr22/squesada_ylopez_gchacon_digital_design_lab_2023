module tb_matrix_position_display_tb;
    logic [2:0] fila;          // Entrada fila
    logic [2:0] columna;       // Entrada columna
    wire [6:0] salidaFila;     // Salida fila
    wire [6:0] salidaColumna;  // Salida columna

    // Instancia del módulo bajo prueba
    matrix_position_display uut (
        .fila(fila),
        .columna(columna),
        .salidaFila(salidaFila),
        .salidaColumna(salidaColumna)
    );

    // Generación de estímulos
    initial begin
        $display("Iniciando simulación");
        fila = 2;    // Ejemplo de valor de fila (2 en decimal)
        columna = 5; // Ejemplo de valor de columna (5 en decimal)

        // Simulación por un tiempo
        #10;

        // Mostrar resultados
        $display("Valor de fila: %d", fila);
        $display("Valor de columna: %d", columna);
        $display("Salida de fila en siete segmentos: %b", salidaFila);
        $display("Salida de columna en siete segmentos: %b", salidaColumna);

        $finish; // Finalizar la simulación
    end
endmodule
