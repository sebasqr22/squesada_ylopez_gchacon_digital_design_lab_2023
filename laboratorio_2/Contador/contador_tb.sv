module contador_tb();

	logic clock,reset;
	logic [5:0] cuenta;
	logic [5:0] carga;
	logic [3:0] cuenta2;
	logic [3:0] carga2;
	logic [1:0] carga3;
	logic [1:0] cuenta3;
	
	
	contador #(.N(6)) cont1(clock, reset,carga, cuenta);
	
	
	contador #(.N(4)) cont2(clock, reset,carga2, cuenta2);
	
	
	contador #(.N(2)) cont3(clock, reset,cuenta3, carga3);
	
	
	
	
	initial begin
	
		carga = 6'b111111;
		carga2 = 4'b1111;
		cuenta3 = 2'b11;
		reset = 0; #10;
		reset = 1; #10;
		clock = 0; #10;
	
		assert (carga == 6'b111111)else $error("fallo prueba 1");
		assert (carga2 == 4'b1111)else $error("fallo prueba 2");
		assert (cuenta3 == 2'b11)else $error("fallo prueba 3");
		
		
		
		clock = 1; #10;
		clock = 0; #10;
		
		
		assert(cuenta == carga-2'b10) else $error("error");
		$display("p1 correcto");
		assert(cuenta2 == carga2-2'b10) else $error("error");
		$display("p2 correcto");
		assert(carga3== cuenta3-2'b10) else $error("error");
		$display("p3 correcto");
		
		
	end
	always begin
		clock = !clock; #10;
	end
	
	

endmodule