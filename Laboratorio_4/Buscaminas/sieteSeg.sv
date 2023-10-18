module sieteSeg(
input wire [2:0] entrada, 
output reg [6:0] salida
);

	always@(*)
	begin
		case(entrada)
			0: salida = 7'b0000001;
			1: salida = 7'b1001111;
			2: salida = 7'b0010010;
			3: salida = 7'b0000110;
			4: salida = 7'b1001100;
			5: salida = 7'b0100100;
			6: salida = 7'b0100000;
			7: salida = 7'b0001111;
			default: salida = 7'b0000001;
		endcase
	end

endmodule