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
	 assert (result === 14'b11111110000001) else $display("SUCCESS: #0");
	 $display(result); // b11111110000001 = 0
	 #10;

	 clk=1;
	 rst=0;
	 assert (result === 14'b11111111001111) else $display("SUCCESS: #0");
	 $display(result); // b11111111001111 = 1
	 #10;
	 
	 clk=1;
	 rst=0;
	 assert (result === 14'b11111110010010) else $display("SUCCESS: #0");
	 $display(result); // b11111110010010 = 2
	 #10;

	 clk=1;
	 rst=0;
	 assert (result === 14'b11111110000110) else $display("SUCCESS: #0");
	 $display(result); // b11111110000110 = 3
	 #10;
	 
	 $display("--- Reset ---");
	 
	 clk=0;
	 rst=1;
	 assert (result === 14'b11111110000001) else $display("SUCCESS: #0");
	 $display(result);
	 #10;
	end
endmodule 