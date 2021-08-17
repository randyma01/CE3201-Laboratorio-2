module conversor_bdc_tb();
  logic switches, display;
  
  conversor_bdc test(switches, display);
  
  initial begin
    $display("Start testbench !!!");
	 
	 //switches = 4'b0111 = decimal -> 7;
	 switches=7;
	 assert (display === 14'b11111110001111) else $display("SUCCESS: #7");
	 #10;
	 
	 //switches=4'b1001  = decimal -> 9;
	 switches=9;
	 assert (display === 14'b11111110001100) else $display("SUCCESS: #9");
	 #10;
	 
	 //switches=4'b1100  = decimal -> 12;
	 switches=12;
	 assert (display === 14'b10011110010011) else $error("FAILED: #12");
	 #10;
	 
	 //switches=4'b0011  = decimal -> 3;
	 switches=3;
	 assert (display === 14'b1111111000111) else $error("FAILED: #3");
	 #10;
	end
	
endmodule 