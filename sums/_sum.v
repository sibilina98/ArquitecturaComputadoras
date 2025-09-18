module _sum(input OP1, OP2, output S, AS);

assign S = (OP1 ^ OP2);
assign AS = (OP1 & OP2);


endmodule
