module game_over_state(
input game_over,
input wire clk,
input wire reset,
input logic [9:0] inputSwitch,
input wire [3:0] entrada, 
output reg [6:0] salida
);

sieteSeg sieteseg (
					.entrada(entrada),
					.salida(salida)
			);


//Modulo encargado de mostrar un 0 en el display si es game over
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
		if (game_over == 1) begin
			//sieteseg(1,salida);
	 end
	 else if (inputSwitch == 10'b1111111110) begin
		// Apagar todos los segmentos si win es 0
			//sieteseg(1,salida);
		end
end
end

endmodule