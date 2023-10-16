module select_flag(
input wire clk,
input wire reset,
input logic [3:0] x,
input logic [3:0] y,
input logic [9:0] inputSwitchF,
output logic [3:0] outcasillaX,
output logic [3:0] outcasillaY
);

logic [3:0] casilla_x = 0;
logic [3:0] casilla_y = 0;

always @(inputSwitchF) begin
	if (reset) begin
		casilla_x <= 0;
		casilla_y <= 0;
	end
	else if (inputSwitchF == 10'b1111111011) begin
		casilla_x = x;
		casilla_y = y;
		
	end

end

assign outcasillaX = casilla_x;
assign outcasillaY = casilla_y;

endmodule