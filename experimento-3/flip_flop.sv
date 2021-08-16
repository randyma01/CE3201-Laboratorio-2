module flip_flop(
  input logic clk,
  input logic rst,
  output logic number
);

  always_ff@(posedge clk, posedge rst)
  
  begin
    if (rst)
	   number<=0;
	else if (number == 64)
			number=0;
		else
			number<=number+1;
	end
	
endmodule 