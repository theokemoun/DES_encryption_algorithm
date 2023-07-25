module s1
(
 input  wire  [5:0]  s1_in,
 output reg   [3:0]  s1_out
);


always @ (*)
   case(s1_in)
      6'b000000 :  s1_out = 4'he;
      6'b000001 :  s1_out = 4'h0;
	  6'b000010 :  s1_out = 4'h4;
	  6'b000011 :  s1_out = 4'hf;
	  6'b000100 :  s1_out = 4'hd;
	  6'b000101 :  s1_out = 4'h7;
	  6'b000110 :  s1_out = 4'h1;
	  6'b000111 :  s1_out = 4'h4;
	  6'b001000 :  s1_out = 4'h2;
	  6'b001001 :  s1_out = 4'he;
	  6'b001010 :  s1_out = 4'hf;
	  6'b001011 :  s1_out = 4'h2;
	  6'b001100 :  s1_out = 4'hb;
	  6'b001101 :  s1_out = 4'hd;
	  6'b001110 :  s1_out = 4'h8;
	  6'b001111 :  s1_out = 4'h1;
	  6'b010000 :  s1_out = 4'h3;
	  6'b010001 :  s1_out = 4'ha;
	  6'b010010 :  s1_out = 4'ha;
	  6'b010011 :  s1_out = 4'h6;
	  6'b010100 :  s1_out = 4'h6;
	  6'b010101 :  s1_out = 4'hc;
	  6'b010110 :  s1_out = 4'hc;
	  6'b010111 :  s1_out = 4'hb;
	  6'b011000 :  s1_out = 4'h5;
	  6'b011001 :  s1_out = 4'h9;
      6'b011010 :  s1_out = 4'h9;
      6'b011011 :  s1_out = 4'h5;	  
	  6'b011100 :  s1_out = 4'h0;
      6'b011101 :  s1_out = 4'h3;
      6'b011110 :  s1_out = 4'h7;
      6'b011111 :  s1_out = 4'h8;
      6'b100000 :  s1_out = 4'h4;
      6'b100001 :  s1_out = 4'hf;
      6'b100010 :  s1_out = 4'h1;
      6'b100011 :  s1_out = 4'hc;
      6'b100100 :  s1_out = 4'he;
      6'b100101 :  s1_out = 4'h8;
      6'b100110 :  s1_out = 4'h8;
      6'b100111 :  s1_out = 4'h2;
      6'b101000 :  s1_out = 4'hd;
      6'b101001 :  s1_out = 4'h4;
      6'b101010 :  s1_out = 4'h6;
      6'b101011 :  s1_out = 4'h9;	 
      6'b101100 :  s1_out = 4'h2;	
      6'b101101 :  s1_out = 4'h1;
      6'b101110 :  s1_out = 4'hb;
      6'b101111 :  s1_out = 4'h7;
      6'b110000 :  s1_out = 4'hf;
      6'b110001 :  s1_out = 4'h5;
      6'b110010 :  s1_out = 4'hc;
      6'b110011 :  s1_out = 4'hb;
	  6'b110100 :  s1_out = 4'h9;
      6'b110101 :  s1_out = 4'h3;
      6'b110110 :  s1_out = 4'h7;
      6'b110111 :  s1_out = 4'he;	  
      6'b111000 :  s1_out = 4'h3;	 
      6'b111001 :  s1_out = 4'ha;
      6'b111010 :  s1_out = 4'ha;	
      6'b111011 :  s1_out = 4'h0;
      6'b111100 :  s1_out = 4'h5;	 
      6'b111101 :  s1_out = 4'h6;
      6'b111110 :  s1_out = 4'h0;
      6'b111111 :  s1_out = 4'hd;
  
	 endcase

endmodule	 
	  
	  
	  