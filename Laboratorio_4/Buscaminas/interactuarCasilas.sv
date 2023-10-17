module interactuarCasilas(
  input wire clk,
  input wire reset,
  input logic [3:0] x,
  input logic [3:0] y,
  input logic [7:0][7:0] matrix,
  input wire [1:0] switches,
  output logic [7:0][7:0] matrixSalida,
  output reg [6:0] salidaDisplay
);

	logic [3:0] numerito;
	sieteSeg primerSeg(.entrada(numerito), .salida(salidaDisplay));

  always @(*) begin 
    case (switches)
      2'b01: // DESBLOQUEA
        begin
          logic [7:0] tmp;
          tmp = matrix[x][y];
          
          if (tmp[0] == 0) begin
            tmp[3] = 1;
            matrixSalida[x][y] = tmp;
          end
			 
			 else begin
				numerito = 0;
			 end
        end
          
          
      2'b10: // FLAG
        begin
          logic [7:0] tmp;
          tmp = matrix[x][y]; // 8'b00000000
          tmp[1] = 1;
          matrixSalida[x][y] = tmp;
        end
          
      default: matrixSalida = matrix; // Mantén la matriz sin cambios en otros casos
    endcase
  end

endmodule
