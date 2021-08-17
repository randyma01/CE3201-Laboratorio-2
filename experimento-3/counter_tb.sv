module counter_tb();
  logic clk, rst, result;
  
  counter test(clk, rst, result);
  
  initial begin
    $display("Start testbench !!! ");
	 
	 
	 // start -
	 clk=0;
	 rst=1;
	 $display(result); // x
	 #10;
	 
    // start -> 0
	 clk=1;
	 rst=0;
	 $display(result); // b11111110000001 = 0
	 #10;
	 
	 // start -> 1
	 clk=1;
	 rst=0;
	 $display(result); // b11111111001111 = 1
	 #10;
	 
	 // start -> 2
	 clk=1;
	 rst=0;
	 $display(result); // b11111110010010 = 2
	 #10;
	 
	 // start -> 3
	 clk=1;
	 rst=0;
	 $display(result); // b11111110000110 = 3
	 #10;
	 
	 // start -> 4
	 clk=0;
	 rst=1;
	 $display(result); // b11111110000001 = 0
	 #10;
	end
endmodule 