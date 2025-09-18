module ALU (input  [3:0] A, input  [3:0] B,input  [3:0] sel,output reg [3:0] C);

    always @(*) begin

        
        case (sel)
            4'd0:  C = A + B;              // Suma
            4'd1:  C = A - B;              // Resta
            4'd2:  C = A & B;              // AND
            4'd3:  C = A | B;              // OR
            4'd4:  C = A ^ B;              // XOR
            4'd5:  C = (A == B) ? 4'd1 : 4'd0; // Igualdad
            4'd6:  C = (A > B)  ? 4'd1 : 4'd0; // Mayor que
            4'd7:  C = (A < B)  ? 4'd1 : 4'd0; // Menor que
            4'd8:  C = A >> B;             // Corrimiento lógico derecha
            4'd9:  C = A << B;             // Corrimiento lógico izquierda
            default: C = 4'd0;             // Valor por defecto
        endcase
    end
endmodule
