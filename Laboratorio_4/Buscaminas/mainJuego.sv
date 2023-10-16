module mainJuego(
	input logic clk, reset,
	output logic vga_hsync,vga_vsync,sync_blank,sync_b,
	output logic [7:0]red,green,blue,
	output logic clk_25
);

	logic [7:0][7:0] matrix;
	
	
	matriz matrx(.clk(clk), .reset(reset), .enable_matriz(1), .matrizOutput(matrix));

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
