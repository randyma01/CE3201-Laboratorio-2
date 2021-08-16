module conversor_bdc_tb();
  logic switches, display;
  
  conversor_bdc test(switches, display);
  
  initial begin
    $display("Start testbench !!! ");
	 
    // testing 7
	 //switches=4'b0111;
	 switches=7;
	 assert (display === 14'b11111110001111) else $display("SUCCESS: #7");
	 #10;
	 
	 // testing 9
	 //switches=4'b1001;
	 switches=9;
	 assert (display === 14'b11111110001100) else $display("SUCCESS: #9");
	 #10;
	 
	 // testing 12
	 //switches=4'b1100;
	 switches=12;
	 assert (display === 14'b10011110010011) else $error("FAILED: #12");
	 #10;
	 
	 // testing 3
	 //switches=4'b0011;
	 switches=3;
	 assert (display === 14'b1111111000111) else $error("FAILED: #3");
	 #10;
	end
	
endmodule 