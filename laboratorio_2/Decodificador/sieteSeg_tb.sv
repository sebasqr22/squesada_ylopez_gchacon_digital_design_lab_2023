module sieteSeg_tb (); 

	// Declaración de señales
    reg [3:0] x;       
    wire [6:0] salida; 

	 
	 sieteSeg ss(x, salida);
	 
	 initial begin

	 x = 4'b0000;
	 
	 #40
	 
	 x = 4'b0001;
	 
	 #40
	 
	 x = 4'b0010;
	 
	 #40
	 
	 x = 4'b0011;
	
	 #40
	 x = 4'b0100;
	 
	 #40
	 x = 4'b0101;
	 
	 #40
	 x = 4'b0110;
	 
	 #40
	 x = 4'b0111;
	 
	 #40
	 x = 4'b1000;
	 
	 #40
	 x = 4'b0001;
	 
	 end

endmodule
	
	
	
	 
