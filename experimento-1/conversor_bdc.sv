module conversor_bdc(
  input logic [3:0] switches, 
  output logic [13:0] display
);

  always_comb
   begin 
      case(switches)
	     //4'b0000: display=14'b11111110000001; // 0
		  0: display=14'b11111110000001; // 0
		
		  //4'b0001: display=14'b11111111001111; // 1
		  1: display=14'b11111111001111; // 1
		
		  //4'b0010: display=14'b11111110010010; // 2
		  2: display=14'b11111110010010; // 2
		
		  //4'b0011: display=14'b11111110000110; // 3
		  3: display=14'b11111110000110; // 3
		
		  //4'b0100: display=14'b11111111001100; // 4
		  4: display=14'b11111111001100; // 4
		
		  //4'b0101: display=14'b11111110100100; // 5
		  5: display=14'b11111110100100; // 5
		
		  //4'b0110: display=14'b11111110100000; // 6
		  6: display=14'b11111110100000; // 6
		
		  //4'b0111: display=14'b11111110001111; // 7
		  7: display=14'b11111110001111; // 7
		
		  //4'b1000: display=14'b11111110000000; // 8
		  8: display=14'b11111110000000; // 8
		
		  //4'b1001: display=14'b11111110001100; // 9
		  9: display=14'b11111110001100; // 9
		
		  //4'b1010: display=14'b10011110000001; // 10
		  10: display=14'b10011110000001; // 10
		
		  //4'b1011: display=14'b10011111001111; // 11
		  11: display=14'b10011111001111; // 11
		
		  //4'b1100: display=14'b10011110010010; // 12
		  12: display=14'b10011110010010; // 12
		
		  //4'b1101: display=14'b10011110000110; // 13
		  13: display=14'b10011110000110; // 13
		
		  //4'b1110: display=14'b10011111001100; // 14
		  14: display=14'b10011111001100; // 14
		
		  //4'b1111: display=14'b10011110100100; // 15
		  15: display=14'b10011110100100; // 15
		  
		  default: display=14'b11111101111110; // - -
	   endcase
	end
endmodule