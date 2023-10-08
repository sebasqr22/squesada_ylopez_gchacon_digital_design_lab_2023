module Bombs_around (
  input wire clk, // Reloj
  input wire rst, // Señal de reinicio
  input wire [7:0] fila,
  input wire [7:0] columna,
  input logic [7:0][7:0] matriz,
  output wire [3:0] bombas_cercanas
);

  // Señal local para contar bombas
  logic [3:0] bombas_en_celdas_adyacentes;

  // Lógica para contar bombas en celdas adyacentes
  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      bombas_en_celdas_adyacentes <= 4'b0; // Reiniciar en 0 en caso de reinicio
    end else begin
      bombas_en_celdas_adyacentes <=
        matriz[fila-1][columna-1] + matriz[fila-1][columna] + matriz[fila-1][columna+1] +
        matriz[fila][columna-1] 	 +  								  matriz[fila][columna+1] +
        matriz[fila+1][columna-1] + matriz[fila+1][columna] + matriz[fila+1][columna+1];
    end
  end

  // Conectar la cantidad total de bombas cercanas
  assign bombas_cercanas = bombas_en_celdas_adyacentes;

endmodule
