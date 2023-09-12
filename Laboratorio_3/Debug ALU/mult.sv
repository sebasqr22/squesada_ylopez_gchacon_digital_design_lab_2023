module mult #(
  parameter N = 4  // Tamaño de los operandos
)(
  input wire [N-1:0] A,
  input wire [N-1:0] B,
  output wire [2*N-2:0] Producto,
  output wire Overflow
);

  wire [2*N-1:0] producto_temp;
  
  assign producto_temp = A * B;
  assign Producto = producto_temp[2*N-2:0];
  
  // Detectar overflow comparando los bits más significativos de A y B
  assign Overflow = (A[N-1] & B[N-1]) ? (producto_temp[2*N-1] == 0) : 0;

endmodule
