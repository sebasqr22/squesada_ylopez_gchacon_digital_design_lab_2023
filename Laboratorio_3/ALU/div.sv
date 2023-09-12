module div #(
  parameter N = 4  // Tamaño de los operandos
)(
  input wire [N-1:0] Dividendo,
  input wire [N-1:0] Divisor,
  output wire [N-1:0] Cociente,
  output wire [N-1:0] Residuo,
  output wire DivisionByZeroError
);

  wire [N-1:0] cociente_temp;
  wire [N-1:0] residuo_temp;
  
  // Restricción para evitar la división por cero
  assign DivisionByZeroError = (Divisor == 0);
  
  always @(*) begin
    if (DivisionByZeroError) begin
		cociente_temp = 0;
      residuo_temp = 0;
    end else begin
      {cociente_temp, residuo_temp} = Dividendo / Divisor;
    end
  end

  assign Cociente = cociente_temp;
  assign Residuo = residuo_temp;

endmodule