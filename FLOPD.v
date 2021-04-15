module FLOPD(
       input iclk,
		 input iD, 
		 output oQ,
		 output oQN
		 );	 
		 
reg rQ = 1'b0;

assign oQ = rQ;
assign oQn = ~rQ;

always @ (posedge iclk)
begin 
    if(iD ==1)
	 begin 
	    rQ = 1'd1;
	 end 
	 else if(iD ==0)
	 begin 
	    rQ = 1'd0;
	 end 
end 
//assign oQ=(iclk&iD); 
//assign oQ=(iclk&iD)|(~iclk&iD); 
//assign oQN=(iclk&~iD); 	
		 

endmodule 