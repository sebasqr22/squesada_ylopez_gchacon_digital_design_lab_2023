module minesweeper(

	input clk, reset,
	input wire [5:0] bomb_count,
	
	output enable_matriz, movement, click_casillas, mmm_put_flag, put_flag, mmm_bomb, game_over, win
	
	
	output 
);

	Lab4_FSM fsm (.clk(clk), .enable_matriz(enable_matriz), .movement(movement), .click_casillas(click_casillas), .put_flag(put_flag), .game_over(game_over), .win(win));
	



endmodule