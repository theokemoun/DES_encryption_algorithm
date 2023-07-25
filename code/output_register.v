module output_register
  (
    input  wire        clk,
    input  wire        reset,
    input  wire [63:0] ciphertext,
    output reg  [63:0] data_out
  );


always @(posedge clk)
  if (reset)
    data_out <= 64'b0;
  else
    data_out <= ciphertext;

endmodule
