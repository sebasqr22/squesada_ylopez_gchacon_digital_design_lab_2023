module FullAdder #(parameter N = 3) (input logic A, input logic B, input logic Cin, output logic Sum, output logic [N:0] Cout);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule
