module Lab4_FSM_tb;

  // Parámetros de reloj y reset
  reg clk;
  reg rst;

  // Entradas y salidas para el módulo Lab4_FSM
  reg I, W, C, M, F, B;
  wire enable_matriz, movement, click_casillas, mmm_put_flag, put_flag, mmm_bomb, game_over, win;

  // Instanciar el módulo Lab4_FSM que se está probando
  Lab4_FSM uut (
    .I(I), .W(W), .C(C), .M(M), .F(F), .B(B),
    .clk(clk), .rst(rst),
    .enable_matriz(enable_matriz),
    .movement(movement),
    .click_casillas(click_casillas),
    .mmm_put_flag(mmm_put_flag),
    .put_flag(put_flag),
    .mmm_bomb(mmm_bomb),
    .game_over(game_over),
    .win(win)
  );

  // Generar señal de reloj (ejemplo con período de 10 unidades de tiempo)
  always begin
    #5 clk = ~clk;
  end

  // Iniciar reset
  initial begin
    clk = 0;
    rst = 1;
    I = 0; W = 0; C = 0; M = 0; F = 0; B = 0;
    #10 rst = 0;
  end

  // Secuencia de prueba
  initial begin
    // Aquí puedes generar una secuencia de entrada para probar el módulo Lab4_FSM
    // por ejemplo, cambiar las entradas en diferentes momentos y observar las salidas.
    // También puedes monitorear las señales de activación del módulo "matriz".

    // Ejemplo de prueba básica
    #20 I = 1; // Cambiar la entrada I a 1
    #10 I = 0; // Cambiar la entrada I a 0
    // Continúa generando cambios en las entradas según tu caso de prueba.

    // Esperar un tiempo suficiente para observar las salidas
    #100 $finish;
  end

endmodule

// Simulación
module top;
  Lab4_FSM_tb tb();
endmodule
