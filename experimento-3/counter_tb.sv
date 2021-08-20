module counter_tb();
  logic clk;
  logic rst; 
  logic [13:0] result;
  
  counter test(clk, rst, result);
  
  initial begin
    $display("Start testbench !!!");
	 
	 clk=0;
	 rst=1;
	 $display(result); // x
	 #10;
	 
	 clk=1;
	 rst=0;
	 assert(result !== 14'b11110011111111) else $error("FAILED: @ #1");
	 $display(result); // b11110011111111 = 1
	 #10;
	 

	 clk=1;
	 rst=0;
	 assert(result !== 14'b01001001111111) else $error("FAILED: @ #2");
	 $display(result); // b01001001111111 = 1
	 #10;
	 
	 clk=1;
	 rst=0;
	 assert(result !== 14'b01100001111111) else $error("FAILED: @ #3");
	 $display(result); // b01100001111111 = 3
	 #10;

	 clk=1;
	 rst=0;
	 assert(result !== 14'b00110011111111) else $error("FAILED: @ #4");
	 $display(result); // b00110011111111 = 4
	 #10;
	 
	 clk=0;
	 rst=1;
	 $display(result); // b10000001111111 = 0
	 #10;
	end
endmodule 