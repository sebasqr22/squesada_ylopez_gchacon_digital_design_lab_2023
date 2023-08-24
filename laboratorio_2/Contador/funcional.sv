module funcional(input clock, input reset, input [5:0] carga, output [6:0] cuenta1, output [6:0] cuenta2);

	logic [5:0] salida;
	contador #(.N(6)) contador(clock,reset,carga,salida);
	display d1(salida[0],salida[1],salida[2],salida[3], salida[4],cuenta1);
	display d2(salida[5],1'b0,1'b0,1'b0,1'b0,cuenta2);
	
endmodule
