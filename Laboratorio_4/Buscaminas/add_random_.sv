/* module add_random_
(
    input wire [5:0] bomb_count,
    input logic [7:0][7:0] cell_matrix_in,
    input wire clk,             // Señal de reloj
    input wire reset,           // Señal de reset
    output wire [5:0] bomb_Count,
    output logic [7:0][7:0] cell_matrix_out
);

    integer i;
    integer j;
    integer bombs_added;
    int pseudo_random_order[7:0];
    int pseudo_random_order_[7:0];
    logic [7:0][7:0] cell_matrix_variable;
	 
	 bin_to_decimal conversor (
		 .binary_input(bomb_count),
		 .decimal_output(bomb_Count)
	);
	
	 matriz matriz_inst (
      .clk(clk),                  // Conectar clk aquí
      .reset(reset),              // Conectar reset aquí
      .enable_matriz(enable_matriz), // Conectar enable_matriz aquí
      .matrizOutput(cell_matrix_in)  // Conectar cell_matrix_in aquí
    );

    // Bloque de control de reloj y reset
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            // Lógica de reset, restablecer el estado interno según tus necesidades
            bombs_added = 0;
            cell_matrix_variable = '0;  // Restablecer la matriz a 0
        end else begin
            // Lógica para controlar las operaciones durante el funcionamiento normal
            bombs_added = 0; 
            cell_matrix_variable = cell_matrix_in;
            pseudo_random_order = '{1, 7, 3, 5, 0, 4, 2, 6};
            pseudo_random_order_ = '{3, 7, 4, 5, 0, 6, 2, 1};
            
            // Lógica adicional según tus requisitos
            for (i = 0; i < 8; i = i + 1) begin
                for (j = 0; j < 8; j = j + 1) begin
                    if (bombs_added == bomb_Count) begin
                        break;
                    end
                    if (cell_matrix_variable[pseudo_random_order[i]][pseudo_random_order[j]] == 4'd0) begin
                        cell_matrix_variable[pseudo_random_order_[i]][pseudo_random_order_[j]] = 4'd1;
                        bombs_added = bombs_added + 1;
                    end
                end
            end
        end
    end

    // Bloque de asignación de cell_matrix_out
    always_comb begin
        cell_matrix_out = cell_matrix_variable;
    end

endmodule
*/



module add_random_
(
    input wire [5:0] bomb_count,
    input wire clk,             // Señal de reloj
    input wire reset,           // Señal de reset
    output wire [5:0] bomb_Count,
    output reg [7:0][7:0] cell_matrix_out
);

    integer i;
    integer j;
    integer bombs_added;
    int pseudo_random_order[7:0];
    int pseudo_random_order_[7:0];
    reg [7:0][7:0] cell_matrix_variable;
	 
	 bin_to_decimal conversor (
		 .binary_input(bomb_count),
		 .decimal_output(bomb_Count)
	);
	
	 matriz matriz_inst (
      .clk(clk),                  // Conectar clk aquí
      .reset(reset),              // Conectar reset aquí
      .enable_matriz(1), // Ajusta enable_matriz según tus necesidades
      .matrizOutput(cell_matrix_variable)  // Conectar cell_matrix_variable aquí
    );

    // Bloque de control de reloj y reset
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            // Lógica de reset, restablecer el estado interno según tus necesidades
            bombs_added = 0;
            cell_matrix_variable = '0;  // Restablecer la matriz a 0
        end else begin
            // Lógica para controlar las operaciones durante el funcionamiento normal
            bombs_added = 0; 
            pseudo_random_order = '{1, 7, 3, 5, 0, 4, 2, 6};
            pseudo_random_order_ = '{3, 7, 4, 5, 0, 6, 2, 1};
            
            // Lógica adicional según tus requisitos
            for (i = 0; i < 8; i = i + 1) begin
                for (j = 0; j < 8; j = j + 1) begin
                    if (bombs_added == bomb_Count) begin
                        break;
                    end
                    if (cell_matrix_variable[pseudo_random_order[i]][pseudo_random_order[j]] == 4'd0) begin
                        cell_matrix_variable[pseudo_random_order_[i]][pseudo_random_order_[j]] = 4'd1;
                        bombs_added = bombs_added + 1;
                    end
                end
            end
        end
    end

    // Bloque de asignación de cell_matrix_out
    always_comb begin
        cell_matrix_out = cell_matrix_variable;
    end

endmodule
