`timescale 1ns/1ns

module ALU_TB();

    reg  [3:0] A_TB;
    reg  [3:0] B_TB;
    reg  [3:0] sel_TB;
    wire [3:0] C_TB;

    ALU dut (
        .A(A_TB),
        .B(B_TB),
        .sel(sel_TB),
        .C(C_TB)
    );

    initial begin
        // Valores iniciales
        A_TB = 4'd5;   // 0101 en binario
        B_TB = 4'd2;   // 0010 en binario

        // Pruebas de todas las operaciones
        sel_TB = 4'd0; #100;   // Suma
        sel_TB = 4'd1; #100;   // Resta
        sel_TB = 4'd2; #100;   // AND
        sel_TB = 4'd3; #100;   // OR
        sel_TB = 4'd4; #100;   // XOR
        sel_TB = 4'd5; #100;   // Igualdad
        sel_TB = 4'd6; #100;   // Mayor que
        sel_TB = 4'd7; #100;   // Menor que
        sel_TB = 4'd8; #100;   // Corrimiento lógico derecha
        sel_TB = 4'd9; #100;   // Corrimiento lógico izquierda

        $stop;
    end

endmodule
