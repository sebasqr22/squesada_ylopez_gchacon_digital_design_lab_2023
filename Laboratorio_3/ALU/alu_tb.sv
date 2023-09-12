module alu_tb;

  // Parámetros
  parameter N = 4;

  // Señales de entrada
  logic [3:0] A, B;
  logic [3:0] sel;

  // Señales de salida
  logic OF, carry, cero, neg;
  logic [3:0] result;

  // Instancia del módulo alu
  alu #(N) uut (
    .A(A),
    .B(B),
    .sel(sel),
    .OF(OF),
    .carry(carry),
    .cero(cero),
    .neg(neg),
    .result(result)
  );

  // Test case
  initial begin
	integer delay;
	delay = 30;
	
	
    // Inicializa las entradas
	 sel = 4'b0000; // Operación AND seleccionada
    A = 4'b1010;
    B = 4'b1100;

	 #(delay);

    // Aplica estímulos
	  sel = 4'b0001;
     A = 4'b0101;
     B = 4'b0011;
	  
	  #(delay);
	  
	  // Aplica estímulos
	  sel = 4'b0010;
     A = 4'b0101;
     B = 4'b0011;
	  
	  #(delay);
  end

endmodule
