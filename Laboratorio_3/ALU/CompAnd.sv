module CompAnd #(parameter N = 4) (input logic [N-1:0] A, input logic [N-1:0] B, output logic [N-1:0] R);

  always @* begin
    for (int i = 0; i < N; i = i + 1) begin
      R[i] = A[i] & B[i];
    end
	 end
	 
	 endmodule
	 
