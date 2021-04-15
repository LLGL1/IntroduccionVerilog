module CODIFICADORES(
       input iA,
		 input iB,
		 input iC,
		 input iD,
		 output oa,
		 output ob,
		 output oc,
		 output od,
		 output oe,
		 output of,
		 output og
		 );
		 
		 
assign oa=!((~iA&~iB&~iC)|(~iB&~iC&iD)|(iB&~iC&~iD)|(iA&~iB&iC)|(iA&iC&~iD));
assign ob=!((~iC&~iD)|(~iD&iA&iB)|(~iB&~iC)|(~iA&~iB));
assign oc=!((~iB&~iD)|(iA&~iC)|(~iA&~iB&~iC)|(iC&~iD));
assign od=!((~iA&~iC)|(iB&~iC)|(~iA&iB)|(iA&~iB&iC));
assign oe=!((~iA&~iC)|(~iA&iB));
assign of=!((~iA&~iB)|(~iB&iD)|(~iA&iC)|(iA&~iB&iC));
assign og=!((iB&~iC)|(~iC&iD)|(~iA&iB)|(~iB&iC));

endmodule
