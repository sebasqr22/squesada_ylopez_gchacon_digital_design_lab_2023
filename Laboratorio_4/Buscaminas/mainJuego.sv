module mainJuego(
	input logic clk, reset,
	input wire [5:0] bomb_count,
	input logic [3:0] inputBtn, //para movement
	input logic [1:0] inputSwitchC,
	
	
	output logic vga_hsync,vga_vsync,sync_blank,sync_b,
	output logic [7:0]red,green,blue,
	output logic clk_25,
	output wire [5:0] bomb_Count,
	output logic [3:0] outY, outX, //salidas del movement controller
	output logic [3:0] outcasillaX,
	output logic [3:0] outcasillaY
);

	logic [7:0][7:0] matrix;
	
	
	add_random inicio(.clk(clk), .reset(reset), .bomb_count(bomb_count), 
	.bomb_Count(bomb_Count), .cell_matrix_out(matrix)); //creador de la matrix
	
	movement_controller movnt(.clk(clk), .reset(reset), 
	.inputBtn(inpuBtn), .outX(outX), .outY(outY));//creador del movement
	
	select_casillas slct(.clk(clk), .reset(reset), .x(outX), .y(outY), .inputSwitchC(inputSwitchC),
	.outcasillaX(outcasillaX), .outcasillaY(outcasillaY));
	

	VGA_Main_Module vga(.clk(clk), .rst(reset), .cell_matrix(matrix),
	.vga_hsync(vga_hsync),
	.vga_vsync(vga_vsync),
	.sync_blank(sync_blank),
	.sync_b(sync_b),
	.red(red),
	.green(green),
	.blue(blue),
	.clk_25(clk_25));

endmodule
