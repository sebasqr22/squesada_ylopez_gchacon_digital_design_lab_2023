module alu_tb;

  // Parámetros
  parameter N = 4;

  // Señales de entrada
  logic [3:0] A, B;
  logic [3:0] sel;

  // Señales de salida
  logic OF, carry_, cero, neg;
  logic [3:0] result;

  // Instancia del módulo alu
  alu #(N) uut (
    .A(A),
    .B(B),
    .sel(sel),
    .OF(OF),
    .carry_(carry_),
    .cero(cero),
    .neg(neg),
    .result(result)
  );

  // Test case
  initial begin
	integer delay;
	delay = 30;
	
	
    // AND
	 sel = 4'b0000;
    A = 4'b1010;
    B = 4'b1100;

	 #(delay);

    // OR
	  sel = 4'b0001;
     A = 4'b0101;
     B = 4'b0011;
	  
	  #(delay);
	  
	  // XOR
	  sel = 4'b0010;
     A = 4'b0101;
     B = 4'b0011;
	  
	  #(delay);
	  
	  // Aplica SUMA
	  sel = 4'b0011;
     A = 4'b0100;
     B = 4'b0010;
	  OF = 4'b0000;
	  
	  #(delay);
	  
	  // Aplica SL
	  sel = 4'b0100;
     A = 4'b0010;
     B = 4'b0001;
	  
	  #(delay);
	  
	  // Aplica SR
	  sel = 4'b0101;
     A = 4'b1000;
     B = 4'b0010;
	  
	  #(delay);
  end

endmodule
