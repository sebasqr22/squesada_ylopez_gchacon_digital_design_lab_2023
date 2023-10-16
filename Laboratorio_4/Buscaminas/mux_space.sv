module mux_space( input logic [8:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;
		logic [0:0]flag, tierra, desbloqueado, bloqueado;
		
		assign flag = state[4];
		assign tierra = state[5];
		assign desbloqueado = state[6];
		assign bloqueado = state[7];

		always @(*)
		
			if(flag == 1'b1)	begin
				out_rgb <= 24'b111111110000000000000000; //rojo
				
			end else if(tierra == 1'b1) begin
			
				out_rgb <= 24'b101110001000011000001011; //oro oscuro
			
			end else if(desbloqueado == 1'b1) begin
			
				out_rgb <= 24'b000000000000000011111111; //azul
			
			end else if(bloqueado == 1'b1) begin
			
				out_rgb <= 24'b110000000000000011000000; //morado
			
			end else	begin
				out_rgb <= 24'b000000000000000000000000;
			end
		
		
		/*
				
				24'b000000000000000000000000; //0
				24'b001111001011001101110001; //2     medium sea green
				24'b111111111000000000000000; //4     naranja
				24'b110000000000000011000000; //8     morado oscuro
				24'b111111111111111100000000; //16    amarillo
				24'b111111110000000000000000; //32    rojo
				24'b000000001111111111111111; //64    cian claro
				24'b111111111001100110011001; //128   rosado
				24'b110011000011001111001100; //256   verde claro
				24'b000000000000000011111111; //512   azul
				24'b100000001000000000000000; //1024  olivo
				24'b101110001000011000001011; //2048  oro oscuro
				24'b000000000000000000000000;

			*/
			
		assign rgb = out_rgb; 
			
endmodule