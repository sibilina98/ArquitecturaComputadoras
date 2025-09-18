module Pre_Alu(input [3:0]A, input[3:0]B, input Sel, output reg [3:0]C);

   always @*
   
    begin
	
	    case(Sel)
		
		1'b 0: C = A + B;
		1'b 1: C = A & B;
		
		endcase
	end

endmodule
