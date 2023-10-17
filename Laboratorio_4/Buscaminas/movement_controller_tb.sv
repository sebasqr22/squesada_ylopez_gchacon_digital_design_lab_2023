module movement_controller_tb;

  // Definir los puertos
  reg clk = 0;
  reg reset = 0;
  reg [3:0] inputBtn;
  reg [3:0] outX;
  reg [3:0] outY;

  // Instanciar el módulo bajo prueba
  movement_controller dut (
    .clk(clk),
    .reset(reset),
    .inputBtn(inputBtn),
    .outX(outX),
    .outY(outY)
  );

  // Simulación de reloj
  always #5 clk = ~clk;

  // Inicialización
  initial begin
    // Iniciar reloj
    clk = 0;

    // Esperar un poco para asegurar que la inicialización se completa
//    #10;

    // Establecer reset a 1
    reset = 1;
    #5;
    reset = 0;
	 #5;
    // Simular algunos eventos de botón
    inputBtn = 4'b0111;
    #10;
	 inputBtn = 4'b0111;
    #10;
	 inputBtn = 4'b0111;
    #10;
    inputBtn = 4'b1011;
    #10;
    inputBtn = 4'b1101;
    #10;
    inputBtn = 4'b1110;
    #10;

    // Finalizar simulación
    $stop;
  end

  // Monitorizar las variables
  always @(posedge clk) begin
    $display("outputVarX = %d, outputVarY = %d", outX, outY);
  end

endmodule