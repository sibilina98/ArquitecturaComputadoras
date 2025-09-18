´include "_and.v"

module _Compuertas( input A, B, output _yesA, _yesB, _notA, _notB, _and, _nand, _or, _xnor, _xor, _xnor);

assign _yesA = A;
assign _yesB = B;
assign _notA = ~A;
assign _notB = ~B;
assign _and = (A & B);
assign _nand = ~(A & B);
assign _or = (A | B);
assign _nor = ~(A | B);
assign _xor =(A ^ B);
assign _xnor = ~(A ^ B);
