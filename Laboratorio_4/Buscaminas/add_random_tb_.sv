module add_random_tb_;

  // Definición de señales
  reg clk = 0;
  reg reset = 0;
  reg enable_matriz = 1; // Puedes ajustar esta señal según tus necesidades
  reg [5:0] bomb_count = 6'b001110;

  logic [7:0][7:0] cell_matrix_v;
  wire [5:0] bomb_Count;
  wire [7:0][7:0] cell_matrix_out;

  // Instancia del módulo add_random
  add_random add_random_inst (
    .clk(clk),
    .reset(reset),
    .bomb_count(bomb_count),
    .bomb_Count(bomb_Count),
    .cell_matrix_out(cell_matrix_out)
  );

  // Genera un reloj
  always begin
    #5 clk = ~clk;
  end

  // Inicialización de señales
  initial begin
    // Configura las señales de entrada según tus necesidades
    reset = 0;

    // Activa el reloj
    #5 reset = 1;
    #5 reset = 0;

    // Puedes inicializar cell_matrix_v con tus valores iniciales
    // cell_matrix_v = ...;

    // Espera un tiempo suficiente para la simulación
    #100;

    // Puedes observar las salidas, realizar aserciones, etc.

    // Finaliza la simulación
    $finish;
  end

endmodule

