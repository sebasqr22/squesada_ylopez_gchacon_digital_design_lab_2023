module contador #(parameter N = 2) (
    input logic clock,
    input logic reset,
    input logic [N-1:0] carga,
    output logic [N-1:0] cuenta
);

    logic [N-1:0] cuentaActual;

    always_ff @(posedge clock or negedge reset) begin
        if (!reset)
            cuentaActual <= carga;
        else if (cuentaActual > 0)
            cuentaActual <= cuentaActual - 1;
    end

    assign cuenta = cuentaActual;

endmodule