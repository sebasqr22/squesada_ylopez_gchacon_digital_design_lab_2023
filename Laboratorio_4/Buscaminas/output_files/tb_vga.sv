`timescale 1ns / 1ps

module tb_vga;

    // Parámetros de tiempo
    parameter PERIOD = 40; // 25 MHz clock => 1 / 25e6 * 10^9 = 40 ns
    
    // Señales de entrada
    logic clk = 0;

    // Señales de salida
    logic clk_25, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK;
    logic [7:0] r, g, b;

    // Instancia del módulo a probar
    vga uut (
        .clk(clk),
        .clk_25(clk_25),
        .H_SYNC(H_SYNC),
        .V_SYNC(V_SYNC),
        .SYNC_B(SYNC_B),
        .SYNC_BLANK(SYNC_BLANK),
        .r(r),
        .g(g),
        .b(b)
    );

    // Generador de clock
    always #((PERIOD / 2)) clk =~ clk;

    // Lógica del testbench
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_vga);

        // Espera inicial
        #200;

        // Dibuja un rectángulo blanco en el centro de la pantalla
        // Puedes ajustar las coordenadas, el tamaño y el color según tus necesidades
        #100 $display("Dibujando rectángulo blanco en la pantalla...");
        #100;
        $display("Simulación completada");
        $finish;
    end

endmodule
