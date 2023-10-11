module vga (input logic clk,
            output logic clk_25,
				output logic H_SYNC, V_SYNC,
				output logic SYNC_B, SYNC_BLANK,
				output logic [7:0]r,g,b);
				
				
		logic [9:0] cuentaX,cuentaY;
		
				
		
		
//--------------Instancia del divisor de clock-------------------------//
		divisorContadores dv(clk,clk_25);

//--------------Instancia del controlador VGA--------------------------//		
		controladorVGA cntVGA (clk_25,H_SYNC,V_SYNC,SYNC_B,SYNC_BLANK, cuentaX,cuentaY);

		
endmodule
