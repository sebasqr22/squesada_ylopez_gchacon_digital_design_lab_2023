module mod #(
  parameter N = 4
)(
  input wire [N-1:0] Dividendo,
  input wire [N-1:0] Divisor,
  output wire [N-1:0] Resultado
);

assign Resultado = Dividendo % Divisor;

endmodule