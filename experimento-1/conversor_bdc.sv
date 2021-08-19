module conversor_bdc(
  input logic [3:0] switches, 
  output logic [13:0] display
);

  always_comb
   begin 
      case(switches)
	     
		  0: display=14'b10000001111111; // 0	
		  
		  1: display=14'b11110011111111; // 1
			  
		  2: display=14'b01001001111111; // 2
		  
		  3: display=14'b01100001111111; // 3	
		 
		  4: display=14'b00110011111111; // 4	
		 
		  5: display=14'b00100101111111; // 5
			 
		  6: display=14'b00000101111111; // 6
			 
		  7: display=14'b11110001111111; // 7
			  
		  8: display=14'b00000001111111; // 8	
		  
		  9: display=14'b00110001111111; // 9	
		  
		  10: display=14'b10000001111001; // 10
			  
		  11: display=14'b11110011111001; // 11	
		 
		  12: display=14'b01001001111001; // 12	
		  
		  13: display=14'b01100001111001; // 13
		  
		  14: display=14'b00110011111001; // 14
		
		  15: display=14'b00100101111001; // 15
		  
		  default: display=14'b11111101111110; // - -
	   endcase
	end
endmodule
