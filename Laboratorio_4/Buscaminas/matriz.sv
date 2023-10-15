module matriz (
  input wire clk,
  input wire reset,

  input enable_matriz,
  output logic [7:0][7:0] matrizOutput

);

  // Registros para almacenar la matriz de enteros de 8x8
  logic [7:0][7:0] cell_matrix_variable;
  

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      if (enable_matriz == 1) begin
        // Inicialización de la matriz en el flanco de reset
        for (int i = 0; i < 8; i = i + 1) begin
          for (int j = 0; j < 8; j = j + 1) begin
            cell_matrix_variable[i][j] <= 8'b0; // Inicializar todos los elementos a 0
          end
        end
      end else begin
        // Acciones adicionales que se pueden realizar durante el funcionamiento normal
        // Puedes agregar lógica adicional aquí
      end
    end
  end
  
  assign matrizOutput = cell_matrix_variable;

  // El diseño puede incluir más lógica aquí

endmodule

