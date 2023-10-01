module Lab4FSM(input x, M, F, B, clk, rst, output Show_table, Show_quares, Flag, Bomb, Complete_matrix, put_flag, game_over, win);

logic [1:0] state, next_state;

//actual state logic
always_ff @(posedge clk or posedge rst)
	if (rst) state = 4'b0000;
	else
		state = next_state;
		
// Estado 0000 = Inicio
// Estado 0001 = Mostrar tablero
// Estado 0010 = Mostrar casillas
// Estado 0011 = bomba?
// Estado 0100 = Matriz completa?
// Estado 0101 = Flag?
// Estado 0110 = Colocar flag
// Estado 0111 = Game Over
// Estado 1000 = Win

//next state logic
always_comb
	case(state)
		4'b0000: if (x) next_state = 4'b0001; else next_state = 4'b0000;
		4'b0001: if (x) next_state = 4'b0010; else next_state = 4'b0011;
		4'b0010: if (x) next_state = 4'b0101; else next_state = 4'b0011;
		4'b0011: if (x) next_state = 4'b0111; else next_state = 4'b0010;
		4'b0100: if (x) next_state = 4'b1000; else next_state = 4'b0001;
		4'b0101: if (x) next_state = 4'b0110; else next_state = 4'b0010;
		4'b0001: next_state = 4'b0100;
		4'b0011: next_state = 4'b0000;
		4'b0110: next_state = 4'b0010;
		4'b1000: next_state = 4'b0000;
		default: next_state = 4'b0000;
	endcase

//output logic
assign Show_table = (state == 4'b0001);
assign Show_quares = (state == 4'b0010);
assign Bomb = (state == 4'b0011);
//assign Complete_matrix = (state == 4'b0100);
assign Flag = (state == 4'b0101);
//assign put_flag = (state == 4'b0110);
//assign game_over = (state == 4'b0111);
//assign win = (state == 4'b1000);


endmodule