module counter #(parameter N=6)
(
  input logic clk,
  input logic rst,
  output logic [13:0] result
);

  logic [N-1:0] number;

  flip_flop counter(clk, rst, number);
  
  deco deco_display(number, result);

endmodule 