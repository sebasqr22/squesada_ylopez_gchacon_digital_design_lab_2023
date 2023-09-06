module suma (input logic N-1:0] A, input logic [N-1:0] B, output logic [N-1:0] Sum, output logic Cout);
 
    logic [N-1:0] Carry;
    logic [N-2:0] Cout_per_bit;

    NBitAdder #(3) adder_inst (.A(A), .B(B), .Cin(Carry[0]), .Sum(Sum), .Cout(Carry[3]));

    assign Cout_per_bit = Carry[2:0];
    assign Cout = Cout_per_bit[2] | (Cout_per_bit[1] & Cout_per_bit[0]);

endmodule
