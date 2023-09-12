module resta #(parameter N = 4) (input logic [N-1:0] A, input logic [N-1:0] B, output logic Neg, output logic [N-1:0] R);

logic [N-1:0] temp1;
logic [N-1:0] temp2;
logic [N-1:0] temp3;
logic [N-1:0] temp4;
logic temp5;

Comp2 #(N) comp2_inst1 (.A(A), .R(temp1));

Comp2 #(N) comp2_inst2 (.A(B), .R(temp2));

NBitAdder #(N) sum_inst1 (.A(A) , .B(temp2), .Sum(temp3), .Overflow(temp5));

NBitAdder #(N) sum_inst2 (.A(B) , .B(temp1), .Sum(temp4), .Overflow(temp5));

always_comb begin
  if (A > B) begin
    R = temp3;
    Neg = 0;
  end else if (A < B) begin
    R = temp4;
    Neg = 1;
  end else begin
    R = 0;
    Neg = 0;
  end
end


endmodule
