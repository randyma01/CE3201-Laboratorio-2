module conversor_bdc_tb();
  logic [3:0] switches; 
  logic [13:0] display;
  
  conversor_bdc test(switches, display);
  
  initial begin
    $display("Start testbench !!!");
	 
	 switches = 4'b0111; // 7;
	 assert (display === 14'b11110001111111) else $display("SUCCESS: #7");
	 #10;
	 
	 switches=4'b1001; // 9;
	 assert (display === 14'b00110001111111) else $display("SUCCESS: #9");
	 #10;
	 
	 switches=4'b1100; // 12;
	 assert (display !== 14'b01001001111001) else $error("FAILED: #12");
	 #10;
	 
	 switches=4'b0011; // 3;
	 assert (display !== 14'b01100001111111) else $error("FAILED: #3");
	 #10;
	end
	
endmodule 