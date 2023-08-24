module contador #(parameter N = 6) (
    input clock,
    input reset,
    input [N-1:0] carga,
    output [N-1:0] cuenta
);

    logic [N-1:0] cuentaActual = 0;

    always_ff @(posedge clock, negedge reset)
		if(!reset)
			cuentaActual = carga;
			
		else if (cuentaActual == 0)
				cuentaActual = cuentaActual; //como no existe el pass
				
		else
			cuentaActual = cuentaActual-1;
			
	assign cuenta = cuentaActual;
			  
endmodule
