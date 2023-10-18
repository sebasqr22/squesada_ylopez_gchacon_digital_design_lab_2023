module matrix_position_display (
	 input logic [2:0] fila,
	 input logic [2:0] columna,
	 output reg [6:0] salidaFila,
	 output reg [6:0] salidaColumna
);
	 
	 
	 sieteSeg display (.entrada(fila), .salida(salidaFila));
	 
	 sieteSeg display2 (.entrada(columna), .salida(salidaColumna));

    

endmodule