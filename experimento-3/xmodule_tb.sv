module xmodule_tb();
  logic clk, rst, result;
  
  xmodule test(clk, rst, result);
  
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
	 assert(result == 14'b11111110000001)
	 //$display(result); // b11111110000001
	 #10;
	 
	 // start -> 1
	 clk=1;
	 rst=0;
	 assert(result == 14'b11111111001111)
	 //$display(result); // b11111111001111
	 #10;
	 
	 // start -> 2
	 clk=1;
	 rst=0;
	 assert(result == 14'b11111110010010)
	 //$display(result); // b11111110010010
	 #10;
	 
	 // start -> 3
	 clk=1;
	 rst=0;
	 assert(result == 14'b11111110000110)
	 //$display(result); // b11111110000110
	 #10;
	 
	 // start -> 4
	 //clk=0;
	 //rst=1;
	 //assert(result == 14'b11111110000001)
	 //$display(result); // b11111110000001
	 //#10;
	end
endmodule 