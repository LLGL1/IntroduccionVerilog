module CODI3(
       input iA,
		 input iB,
		 input idata, 
		 output oY0,
		 output oY1,
		 output oY2,
		 output oY3
		 );
		 
assign oY0=(iA|iB|~idata);
assign oY1=(~iA|iB|~idata);
assign oY2=(iA|~iB|~idata);
assign oY3=(~iA|~iB|~idata);


endmodule 