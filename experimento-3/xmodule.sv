module xmodule(
  input logic clk, 
  input logic rst, 
  output [13:0] result
);

  logic number = 0;
  
  always_ff @(posedge clk, posedge rst)
  
  begin
    if (rst)
      number=0;
    else if (number == 64)
      number=0;
	 else
      number=number+1;
	end
	
  always_comb
    begin 
      case (result)
        0 : result=14'b11111110000001;
		  
		  1 : result=14'b11111111001111;
		  
		  2 : result=14'b11111110010010;
		  
		  3 : result=14'b11111110000110;
		  
		  4 : result=14'b11111111001100;
		  
		  5 : result=14'b11111110100100;
		  
		  6 : result=14'b11111110100000;
		  
		  7 : result=14'b11111110001111;
		  
		  8 : result=14'b11111110000000;
		  
		  9 : result=14'b11111110001100;
		  
		  10 : result=14'b10011110000001;
		  
		  11 : result=14'b10011111001111;
		  
		  12 : result=14'b10011110010010;
		  
		  13 : result=14'b10011110000110;
		  
		  14 : result=14'b10011111001100;
		  
		  15 : result=14'b10011110100100;
		  
		  16 : result=14'b10011110100000;
		  
		  17 : result=14'b10011110001111;
		  
		  18 : result=14'b10011110000000;
		  
		  19 : result=14'b10011110001100;
		  
		  20 : result=14'b00100100000001;
		  
		  21 : result=14'b00100101001111;
		  
		  22 : result=14'b00100100010010;
		  
		  23 : result=14'b00100100000110;
		  
		  24 : result=14'b00100101001100;
		  
		  25 : result=14'b00100100100100;
		  
		  26 : result=14'b00100100100000;
		  
		  27 : result=14'b00100100001111;
		  
		  28 : result=14'b00100100000000;
		  
		  29 : result=14'b00100100001100;
		  
		  30 : result=14'b00001100000001;
		  
		  31 : result=14'b00001101001111;
		  
		  32 : result=14'b00001100010010;
		  
		  33 : result=14'b00001100000110;
		  
		  34 : result=14'b00001101001100;
		  
		  35 : result=14'b00001100100100;
		  
		  36 : result=14'b00001100100000;
		  
		  37 : result=14'b00001100001111;
		  
		  38 : result=14'b00001100000000;
		  
		  39 : result=14'b00001100001100;
		  
		  40 : result=14'b10011000000001;
		  
		  41 : result=14'b10011001001111;
		  
		  42 : result=14'b10011000010010;
		  
		  43 : result=14'b10011000000110;
		  
		  44 : result=14'b10011001001100;
		  
		  45 : result=14'b10011000100100;
		  
		  46 : result=14'b10011000100000;
		  
		  47 : result=14'b10011000001111;
		  
		  48 : result=14'b10011000000000;
		  
		  49 : result=14'b10011000001100;
		  
		  50 : result=14'b01001000000001;
		  
		  51 : result=14'b01001001001111;
		  
		  52 : result=14'b01001000010010;
		  
		  53 : result=14'b01001000000110;
		  
		  54 : result=14'b01001001001100;
		  
		  55 : result=14'b01001000100100;
		  
		  56 : result=14'b01001000100000;
		  
		  57 : result=14'b01001000001111;
		  
		  58 : result=14'b01001000000000;
		  
		  59 : result=14'b01001000001100;
		  
		  60 : result=14'b01000000000001;
		  
		  61 : result=14'b01000001001111;
		  
		  62 : result=14'b01000000010010;
		  
		  63 : result=14'b01000000000110;
		  
		  default : result=14'b11111111111111;  
      endcase
   end
endmodule 