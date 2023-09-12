module Comp2 #(parameter N = 4) (input logic [N-1:0] A, output logic [N-1:0] R);

logic [N-1:0] temp_0;
logic [N-1:0] temp_1;
logic temp_2;

CompInv #(N) inv_inst (.A(A), .R(temp_0));

NBitAdder #(N) sum_inst (.A(temp_0) , .B(1), .Sum(temp_1), .Overflow(temp_2));

assign R = temp_1;

endmodule
