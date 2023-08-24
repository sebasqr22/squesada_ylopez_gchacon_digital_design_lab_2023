module sieteSeg_tb (); 

	// Declaración de señales
    reg [3:0] x;       
    wire [6:0] salida; 

	 
	 sieteSeg ss(a,b,c,d,s,dis);
	 
	 initial begin
	
	 a = 0; //0
	 b = 0;
	 c = 0;
	 d = 0;
	 
	 #40
	 
	 a = 0; //1
	 b = 0;
	 c = 0;
	 d = 1;
	 
	 #40
	 
	 a = 0; //2
	 b = 0;
	 c = 1;
	 d = 0;
	 
	 #40
	 
	 a = 0; //3
	 b = 0;
	 c = 1;
	 d = 1;
	 
	 #40
	 
	 a = 0; //4
	 b = 1;
	 c = 0;
	 d = 0;
	 
	 #40
	 
	 a = 0; //5
	 b = 1;
	 c = 0;
	 d = 1;
	 
	 #40
	 
	 a = 0; //6
	 b = 1;
	 c = 1;
	 d = 0;
	 
	 #40
	 
	 a = 0; //7
	 b = 1;
	 c = 1;
	 d = 1;
	 
	 #40
	 
	 a = 1; //8
	 b = 0;
	 c = 0;
	 d = 0;
	 
	 #40
	 
	 a = 1; //9
	 b = 0;
	 c = 0;
	 d = 1;
	 
	 #40
	 
	 a = 1; //10
	 b = 0;
	 c = 1;
	 d = 0;
	 
	 #40
	 
	 a = 1; //11
	 b = 0;
	 c = 1;
	 d = 1;
	 
	 #40
	 
	 a = 1; //12
	 b = 1;
	 c = 0;
	 d = 0;
	 
	 #40
	 
	 a = 1; //13
	 b = 1;
	 c = 0;
	 d = 1;
	 
	 #40
	 
	 a = 1; //14
	 b = 1;
	 c = 1;
	 d = 0;
	 
	 #40
	 
	 a = 1; //15
	 b = 1;
	 c = 1;
	 d = 1;
	 
	 #80
	 
	 a = 0;
	 b = 0;
	 c = 0;
	 d = 0;
	
	 end

endmodule