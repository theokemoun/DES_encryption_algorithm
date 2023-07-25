module lab_7_top (
input	   	  clk,
input	 	  reset,
input  [63:0] key_in,
input  [63:0] data_in,
input	 	  load,
output [63:0] data_out		 
);

wire [63:0] plaintext;
wire [63:0] ciphertext;
wire [63:0] key_samp;
wire [47:0] K1;
wire [47:0] K2;
wire [47:0] K3;
wire [47:0] K4;
wire [47:0] K5;
wire [47:0] K6;
wire [47:0] K7;
wire [47:0] K8;
wire [47:0] K9;
wire [47:0] K10;
wire [47:0] K11;
wire [47:0] K12;
wire [47:0] K13;
wire [47:0] K14;
wire [47:0] K15;
wire [47:0] K16;

input_register i_data_samp(.clk(clk), .reset(reset), .data_in(data_in), .load(load), .data_out(plaintext));
input_register i_key_samp(.clk(clk), .reset(reset), .data_in(key_in), .load(load), .data_out(key_samp));

key_schedule i_key_schedule( //TODO !!! real names to be given
.key_in(key_samp),
.K1(K1),
.K2(K2),
.K3(K3),
.K4(K4),
.K5(K5),
.K6(K6),
.K7(K7),
.K8(K8),
.K9(K9),
.K10(K10),
.K11(K11),
.K12(K12),
.K13(K13),
.K14(K14),
.K15(K15),
.K16(K16)
);

feistel_network i_feistel_network( //TODO !!! real names to be given
.plaintext(plaintext),
.K1(K1),
.K2(K2),
.K3(K3),
.K4(K4),
.K5(K5),
.K6(K6),
.K7(K7),
.K8(K8),
.K9(K9),
.K10(K10),
.K11(K11),
.K12(K12),
.K13(K13),
.K14(K14),
.K15(K15),
.K16(K16),
.ciphertext(ciphertext)
);

output_register i_output_tegister (.clk(clk), .reset(reset), .ciphertext(ciphertext), .data_out(data_out));

endmodule







