module counter_tb();
  logic clk;
  logic rst; 
  logic [13:0] result;
  
  counter test(clk, rst, result);
  
  initial begin
    $display("Start testbench 2-bits !!!");
	 
	 clk=0;
	 rst=1;
	 #10;
	 
	 clk=1;
	 rst=0;
	 assert (result === 14'b10000001111111) else $error("FAILED: @ #0");
	 $display(result); // b10000001111111 = 0
	 #10;

	 clk=1;
	 rst=0;
	 assert (result === 14'b11110011111111) else $error("FAILED: @ #1");
	 $display(result); // b11110011111111 = 1
	 #10;
	 
	 clk=1;
	 rst=0;
	 assert (result === 14'b01001001111111) else $error("FAILED: @ #3");
	 $display(result); // b01001001111111 = 2
	 #10;

	 clk=1;
	 rst=0;
	 assert (result === 14'b01100001111111) else $error("FAILED: @ #3");
	 $display(result); // b01100001111111 = 3
	 #10;
	 
	 $display("--- Reset ---");
	 
	 clk=0;
	 rst=1;
	 assert (result === 14'b10000001111111) else $error("FAILED: @ RESET");
	 $display(result); // b10000001111111 = 0
	 #10;
	end
endmodule 