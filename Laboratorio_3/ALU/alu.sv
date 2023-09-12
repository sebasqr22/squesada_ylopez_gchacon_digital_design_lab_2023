module alu #(parameter N = 4)(input logic [3:0] A,B, input wire [3:0] sel, output logic OF, output logic carry, output logic cero, output logic neg, output logic [3:0] result);


wire [N-1:0] andR, orR, xorR;


//ShiftLeft #(N)  inst_sl (.A(A), .B(B), .R(result))
//ShiftRight #(N)  inst_sr (.A(A), .B(B) , .R(result))
CompAnd #(N)  inst_and (.A(A), .B(B), .R(andR));
CompXor#(N)  inst_xor (.A(A), .B(B), .R(xorR));
CompOr#(N)  inst_or (.A(A), .B(B), .R(orR));



logic [N-1:0] tmp;

	always @(*) begin 
	
		case (sel)
			4'b0000: //AND
				tmp = andR;
				
			4'b0001: //OR
				tmp = orR;
				
			4'b0010: //XOR
				tmp = xorR;
				/*
			4'b0011:
			4'b0100:
			4'b0101:
			4'b0110:
			4'b0111: 
			4'b1000:
			4'b1001:*/
			default: tmp = andR;
			
		endcase
	end
	
	assign result = tmp;
	
	
endmodule
