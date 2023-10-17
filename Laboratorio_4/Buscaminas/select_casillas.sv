module select_casillas(
input wire clk,
input wire reset,
input logic [3:0] x, //instancia de movement
input logic [3:0] y, //instancia de movement
input wire [0:0] inputSwitchC,
output logic [3:0] outcasillaX,
output logic [3:0] outcasillaY
);

logic [3:0] casilla_x = 0;
logic [3:0] casilla_y = 0;

always @(inputSwitchC) begin
	if (reset) begin
		casilla_x <= 0;
		casilla_y <= 0;
	end
	
	else if (inputSwitchC == 1'b0) begin
		casilla_x = x;
		casilla_y = y;
	
	end

end
//Casilla clickeada
assign outcasillaX = casilla_x;
assign outcasillaY = casilla_y;

endmodule