module movement_controller (
input wire clk,
input wire reset,
input logic [3:0] inputBtn,
output logic [3:0] outX,
output logic [3:0] outY
);


logic [3:0] x = 0;
logic [3:0] y = 0;

always @(inputBtn) begin
	if (reset) begin
		x <= 0;
		y <= 0;
	end
	
	// Moverse a arriba
	else if (inputBtn == 4'b0111) begin
		if (y == 0) begin
			y <= y + 7;
		end
		else begin
			y = y - 1;
		end
	end
	
	
	
	// Moverse a izquierda
	else if (inputBtn == 4'b1011) begin
		if (x == 0) begin
			x <= x + 7;
		end
		else begin
			x = x -1;
		end
	end
	
	
	//Moverse a abajo
	else if (inputBtn == 4'b1101) begin
		if (y == 7) begin
			y <= y - 7;
		end
		else begin
			y <= y + 1;
		end
	end
	//Moverse a derecha
	else if (inputBtn == 4'b1110) begin
		if (x == 7) begin
			x <= x - 7;
		end
		else begin
			x <= x + 1;
		end
	end
end

assign outX = x;
assign outY = y;

endmodule