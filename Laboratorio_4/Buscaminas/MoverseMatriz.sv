module MoverseMatriz (
  input wire movement,
  output casilla_x,
  output casilla_y
);
  reg [7:0] matriz [0:7][0:7];

  initial begin
    // Inicializar la matriz con algunos valores
    //for (int i = 0; i < 8; i = i + 1)
      //for (int j = 0; j < 8; j = j + 1)
        //matriz[i][j] = i + j;

    // Moverse a través de la matriz solo cuando movement sea 1
    if (movement == 1) begin
      for (int i = 0; i < 8; i = i + 1) begin
        for (int j = 0; j < 8; j = j + 1) begin
          $display("matriz[%0d][%0d] = %0d", i, j, matriz[i][j]);
			 casilla_x = i;
		    casilla_y = j;
        end		  
      end
    end
  end
endmodule
