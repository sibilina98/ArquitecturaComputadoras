`timescale 1ns/1ns

module tb_Pre_Alu;

    reg[3:0] A_TB;
    reg[3:0] B_TB;
    reg Sel_TB;

    wire [3:0] C_TB;
	
	Pre_Alu DUV(.A(A_TB), .B(B_TB), .Sel(Sel_TB), .C(C_TB));
	
	initial begin
		A_TB = 4'd5;
		B_TB = 4'd10;
		Sel_TB = 0;
		#100
		Sel_TB = 1;
		#100
		A_TB = 4'd8;
		B_TB = 4'd4;
		#100
		Sel_TB = 0;
		#100
		A_TB = 4'd6;
		B_TB = 4'd3;
		Sel_TB = 1;
		#100
		$stop;
		
	end
endmodule