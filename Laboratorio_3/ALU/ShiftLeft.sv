
module ShiftLeft #(parameter N = 4)(entrada, shift , salida);

	input[N-1:0] entrada;
	input[2:0] shift;
	output[N-1:0] salida;
	reg[N-1:0] reg_;
	reg[N-1:0] salida;    

	
	
	
	always @(*) begin
	 reg_=entrada;
    for (int i = 0; i < shift; i++) 
		 begin
			salida = {reg_[N-1:0], 1'b0};
			reg_= salida;
		 end
	end
endmodule
