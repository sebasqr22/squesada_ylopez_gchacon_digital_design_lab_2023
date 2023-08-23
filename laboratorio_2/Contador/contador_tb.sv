module contador_tb;

    // Señales de entrada y salida del test bench
    logic clock;
    logic reset;
    logic [1:0] carga;
    logic [1:0] cuenta;

    // Instancia del contador bajo prueba
    contador #(2) dut (
        .clock(clock),
        .reset(reset),
        .carga(carga),
        .cuenta(cuenta)
    );

    initial begin
        // Simulación para 2 bits
        $display("Testing for 2 bits...");
        clock = 0;
        reset = 1;
        carga = 2'b11; // Carga inicial
        #5 reset = 0;

        // Ciclos de simulación
        #15; // Cambiar este valor si es necesario

        $display("Carga: %b, Cuenta: %b", carga, cuenta);
        $finish;
    end

endmodule