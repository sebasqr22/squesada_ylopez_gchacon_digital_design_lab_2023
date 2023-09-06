module div #(parameter N = 4) (input logic [N-1:0] A, input logic [N-1:0] B, output logic [N-1:0] R);

assign R = A / B;

endmodule
