module win_state(
input win,
input wire clk,
input wire reset,
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
			a = 1'b1; // Apagar segmento "a" (nivel bajo)
			b = 1'b0; // Encender segmento "b" (nivel alto)
			c = 1'b0; // Encender segmento "c" (nivel alto)
			d = 1'b1; // Apagar segmento "d" (nivel bajo)
			e = 1'b1; // Apagar segmento "e" (nivel bajo)
			f = 1'b1; // Apagar segmento "f" (nivel bajo)
			g = 1'b1; // Apagar segmento "g" (nivel bajo)
	 end
	 else if (inputBtn == 4'b0111) begin
		win = 0;
		// Apagar todos los segmentos si win es 0
		a = 1'b1; // Encender segmento "a" (nivel alto)
		b = 1'b1; // Apagar segmento "b" (nivel bajo)
		c = 1'b1; // Apagar segmento "c" (nivel bajo)
		d = 1'b1; // Encender segmento "d" (nivel alto)
		e = 1'b1; // Encender segmento "e" (nivel alto)
		f = 1'b1; // Encender segmento "f" (nivel alto)
		g = 1'b1; // Encender segmento "g" (nivel alto)
		end
end
	 

endmodule