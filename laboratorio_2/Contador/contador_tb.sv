module contador_tb;
    logic clock;
    logic reset;
    logic [1:0] carga;
    logic [1:0] cuenta;

    contador #(4) dut (
        .clock(clock),
        .reset(reset),
        .carga(carga),
        .cuenta(cuenta)
    );

    initial begin
        $display("Testing for 4 bits...");
        clock = 0;
        reset = 1;
        carga = 4'b11;
        #5 reset = 0;
        #15;
        $display("Se esta cargando: %b, Esta contando: %b", carga, cuenta);
    end
	 
	 


endmodule