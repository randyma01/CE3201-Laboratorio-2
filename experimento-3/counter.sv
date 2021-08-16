module counter(
  input logic clk,
  input logic rst,
  output logic [13:0] result
);

  logic number;

  flip_flop counter(clk, rst, number);
  
  deco deco_display(number, result);

endmodule 