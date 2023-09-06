module alu (input logic [3:0] A, input logic [3:0] B, input wire [3:0] sel, output logic OF, output logic carry, output logic cero, output logic neg, output logic [3:0] result);


ShiftLeft #(4)  inst_sl (.A(A), .B(B), .R(result))
ShiftRight #(4)  inst_sr (.A(A), .B(B) , .R(result))
CompAnd #(4)  inst_and (.A(A), .B(B), .R(result))
CompXor#(4)  inst_xor (.A(A), .B(B), .R(result))
CompOr#(4)  inst_or (.A(A), .B(B), .R(result))


	always @(*) begin 
	
		case (sel)
			4'b0000:  
			4'b0001:
			4'b0010:
			4'b0011:
			4'b0100:
			4'b0101:
			4'b0110:
			4'b0111: 
			4'b1000:
			4'b1001:
			default:
			
		endcase
	end
	
	
endmodule
