module alu #(parameter N = 4)(input logic [3:0] A,B, input wire [3:0] sel, output logic OF, output logic carry_, output logic cero, output logic neg, output logic [3:0] result);


wire [N-1:0] andR, orR, xorR, multiR, sumaR, shiftLR, shiftRR, restaR, divR;

CompAnd #(N)  inst_and (.A(A), .B(B), .R(andR));
CompXor#(N)  inst_xor (.A(A), .B(B), .R(xorR));
CompOr#(N)  inst_or (.A(A), .B(B), .R(orR));
mult#(N)  inst_mult (.A(A), .B(B), .Producto(multiR), .Overflow(OF));
NBitAdder#(N)  inst_nBitAdder (.A(A), .B(B), .Sum(sumaR), .Overflow(OF));
ShiftL#(N)  inst_sl (.A(A), .shift(B), .R(shiftLR));
ShiftR#(N)  inst_sr (.A(A), .shift(B), .R(shiftRR));
//resta#(N)  inst_resta (.A(A), .B(B), .Neg(neg) , .R(restaR));

div#(N)  inst_div (.Dividendo(A), .Divisor(B), .Cociente(divR), .Residuo(cero), .DivisionByZeroError(neg));


logic [N-1:0] tmp;

	always @(*) begin 
	
		case (sel)
			4'b0000: //AND
				tmp = andR;
				
			4'b0001: //OR
				tmp = orR;
				
			4'b0010: //XOR
				tmp = xorR;
				
			4'b0011: //SUMA
				tmp = sumaR;
				
			4'b0100: //SHIFT L
				tmp = shiftLR;
				
			4'b0101:	//SHIFT R
				tmp = shiftRR;
				
			4'b0110: //MULT
				tmp = multiR;
				
			4'b0111: // DIV
				tmp = divR;
			/*
			4'b1000:
			4'b1001:*/
			default: tmp = andR;
			
		endcase
	end
	
	assign result = tmp;
	
	
endmodule
