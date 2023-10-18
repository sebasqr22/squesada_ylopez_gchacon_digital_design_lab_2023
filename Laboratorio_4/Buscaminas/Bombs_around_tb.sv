module Bombs_around_tb();

  // Señales para el testbench
  reg clk;        // Reloj
  reg rst;        // Señal de reinicio
  reg [7:0] fila;
  reg [7:0] columna;
  logic [7:0][7:0] matriz;
  wire [3:0] bombas_cercanas;

  // Generar un reloj
  always begin
    #5 clk = ~clk;
  end

  // Instanciar el módulo Bombs_around
  Bombs_around contador_bombas (
    .clk(clk),
    .rst(rst),
    .fila(fila),
    .columna(columna),
    .matriz(matriz),
    .bombas_cercanas(bombas_cercanas)
  );


  initial begin
    clk = 0;
    rst = 0;
	 matriz = '{
      '{8'b00000000, 8'b00000001, 8'b00000000, 8'b00000001, 8'b00000000, 8'b00000001, 8'b00000000, 8'b00000001}, // FILA 7
      '{8'b00000001, 8'b00000000, 8'b00000001, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}, // FILA 6
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000001, 8'b00000000, 8'b00000000}, // FILA 5
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000001, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}, // FILA 4
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}, // FILA 3 
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}, // FILA 2
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}, // FILA 1
      '{8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000, 8'b00000000}  // FILA 0
    };

// Realizar pruebas para todas las filas y columnas
		for (fila = 0; fila < 8; fila = fila + 1) begin
		  for (columna = 0; columna < 8; columna = columna + 1) begin
			 rst = 1; 
			 #10 rst = 0; 
			 #10;
			 $display("Fila: %d, Columna: %d, Cantidad de bombas cercanas: %d", fila, columna, bombas_cercanas);
		  end
		end
		
		for (int i = 0; i < 8; i = i + 1) begin
			for (int j = 0; j < 8; j = j + 1 ) begin
				$display("matriz[%0d][%0d] = %b", i, j, matriz[i][j]); // Solo para ver la matriz de entrada 
			end
      end
		
		// Pruebas inutiles  
		$display("matriz[%0d][%0d] = %b", 0, 1, matriz[0][1]);
		$display("matriz[%0d][%0d] = %b", 1, 0, matriz[1][0]);
		$display("matriz[%0d] = %h", 0, matriz[0]);
		


    $finish;
  end

endmodule
