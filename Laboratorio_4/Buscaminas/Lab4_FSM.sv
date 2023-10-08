module Lab4_FSM(input I, W, C, M, F, B, clk, rst, output enable_matriz, movement, click_casillas, mmm_put_flag, put_flag, mmm_bomb, game_over, win);

logic [3:0] state, next_state;

//actual state logic
always_ff @(posedge clk or posedge rst)
	if (rst) state = 4'b0000;
	else
		state = next_state;
		
// Estado 0000 = Inicio
// Estado 0001 = Mostrar tablero
// Estado 0010 = Movimiento
// Estado 0011 = click casillas
// Estado 0100 = Bandera?
// Estado 0101 = colocar bandera
// Estado 0110 = bomba?
// Estado 0111 = Game Over
// Estado 1000 = Win

//next state logic
always_comb
	case(state)
		4'b0000: if (I) next_state = 4'b0001; else next_state = 4'b0000;
		4'b0001: if (W) next_state = 4'b1000; else next_state = 4'b0010;
		4'b0010: if (M) next_state = 4'b0011; else next_state = 4'b0001;
		4'b0011: if (C) next_state = 4'b0100; else next_state = 4'b0110;
		4'b0100: if (F) next_state = 4'b0101; else next_state = 4'b0011;
		4'b0110: if (B) next_state = 4'b0111; else next_state = 4'b0001;
		4'b0101: next_state = 4'b0001;
		4'b0111: next_state = 4'b0000;
		4'b1000: next_state = 4'b0000;
		default: next_state = 4'b0000;
	endcase

//output logic
assign enable_matriz = (state == 4'b0001);
assign movement = (state == 4'b0010);
assign click_casillas = (state == 4'b0011);
assign mmm_put_flag = (state == 4'b0100);
assign put_flag = (state == 4'b0101);
assign mmm_bomb = (state == 4'b0110);
assign game_over = (state == 4'b0111);
assign win = (state == 4'b1000);


endmodule