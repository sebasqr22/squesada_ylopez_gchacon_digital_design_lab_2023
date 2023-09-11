module NBitAdder #(parameter N = 4)(
  input [N-1:0] A, // Entrada de N bits
  input [N-1:0] B, // Entrada de N bits
  output [N-1:0] Sum, // Salida de N bits
  output Overflow // Salida de desbordamiento
);

  wire [N:0] Carry;
  wire [N-1:0] Sums;

  generate
    genvar i;
    for (i = 0; i < N; i = i + 1) begin : gen_full_adders
      FullAdder FA(
        .A(A[i]),
        .B(B[i]),
        .Cin(Carry[i]),
        .Sum(Sums[i]),
        .Cout(Carry[i + 1])
      );
    end
  endgenerate

  assign Sum = Sums;
  assign Overflow = Carry[N];

endmodule
