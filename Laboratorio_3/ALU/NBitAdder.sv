module NBitAdder #(parameter N = 3) (input logic [N-1:0] A, input logic [N-1:0] B, input logic Cin, output logic [N-1:0] Sum, output logic Cout);
    logic [N:0] Carry;
    FullAdder #(N) fa_inst [N-1:0] (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Carry));

    assign Cout = Carry[N];
endmodule
