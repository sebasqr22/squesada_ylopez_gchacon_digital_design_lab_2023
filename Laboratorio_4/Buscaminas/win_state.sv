module win_state(
input win,
input wire clk,
input wire reset,
input logic [9:0] inputSwitch,
output wire a,   // Segmento "a"
output wire b,   // Segmento "b"
output wire c,   // Segmento "c"
output wire d,   // Segmento "d"
output wire e,   // Segmento "e"
output wire f,   // Segmento "f"
output wire g    // Segmento "g"
);

//Modulo encargado de mostrar un 1 en el display si es win
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
		if (win == 1) begin
			a = 1'b1; // Apagar segmento "a" (nivel alto)
			b = 1'b0; // Encender segmento "b" (nivel bajo)
			c = 1'b0; // Encender segmento "c" (nivel bajo)
			d = 1'b1; // Apagar segmento "d" (nivel alto)
			e = 1'b1; // Apagar segmento "e" (nivel alto)
			f = 1'b1; // Apagar segmento "f" (nivel alto)
			g = 1'b1; // Apagar segmento "g" (nivel alto)
	 end
	 else if (inputSwitch == 10'b1111111110) begin
		// Apagar todos los segmentos si win es 0
		a = 1'b1; // Apagar segmento "a" (nivel alto)
		b = 1'b1; // Apagar segmento "b" (nivel alto)
		c = 1'b1; // Apagar segmento "c" (nivel alto)
		d = 1'b1; // Apagar segmento "d" (nivel alto)
		e = 1'b1; // Apagar segmento "e" (nivel alto)
		f = 1'b1; // Apagar segmento "f" (nivel alto)
		g = 1'b1; // Apagar segmento "g" (nivel alto)
		end
end
end	 

endmodule