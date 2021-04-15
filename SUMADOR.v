module SUMADOR(
       input Cin,
		 input iA0,
		 input iB0,
		 input iA1,
		 input iB1,
		 input iA2,
		 input iB2,
		 output S0,
		 output S1,
		 output S2,
		 output Cout2
		 );
		 
assign S0 = ((iA0 ^iB0) ^ Cin);
assign Cout0 = ((iA0 & iB0)| ((iA0 ^ iB0)& Cin));	 
assign S1= ((iA1 ^ iB1) ^ Cout0);
assign Cout1= ((iA1 & iB1)| ((iA1 ^ iB1)& Cout0));
assign S2= ((iA2 ^ iB2) ^ Cout1);
assign Cout2= ((iA2 & iB2)| ((iA2 ^ iB2)& Cout1));	

endmodule	 