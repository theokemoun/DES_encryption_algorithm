module input_register
  (
    input  wire        clk,
    input  wire        reset,
    input  wire [63:0] data_in,
    input  wire        load,
    output reg  [63:0] data_out
  );


always @(posedge clk)
  if (reset)
    data_out<= 64'b0;
  else
    if (load == 1'b1)
      data_out<= data_in;


endmodule
