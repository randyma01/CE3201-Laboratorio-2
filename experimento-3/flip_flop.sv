module flip_flop #(parameter N=6)
(
  input logic clk,
  input logic rst,
  output logic [N-1:0] number
);

  always_ff@(posedge clk or negedge rst)
  
  begin
    if (!rst)
	   number=0;
	else if (number == 64)
			number=0;
		else
			number=number+1;
	end
	
endmodule 