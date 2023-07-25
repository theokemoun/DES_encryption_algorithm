module f_function

(
 input   wire  [31:0] R,
 input   wire  [47:0] Key,
 output  wire  [31:0] f_out
);

wire [47:0] E_out;
wire [47:0] S_in;
wire [31:0] P_in;
wire [31:0] P_out;
wire [3:0]  p1;
wire [3:0]  p2;
wire [3:0]  p3;
wire [3:0]  p4;
wire [3:0]  p5;
wire [3:0]  p6;
wire [3:0]  p7;
wire [3:0]  p8;

assign S_in = Key ^ E_out;
assign P_in = { p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 };
assign f_out = P_out;

E    instan_of_E  (.data_in(R)         , .data_out(E_out));
s1   instan_of_s1 (.s1_in(S_in[47:42]) , .s1_out(p1));   
s2   instan_of_s2 (.s2_in(S_in[41:36]) , .s2_out(p2));
s3   instan_of_s3 (.s3_in(S_in[35:30]) , .s3_out(p3));
s4   instan_of_s4 (.s4_in(S_in[29:24]) , .s4_out(p4));
s5   instan_of_s5 (.s5_in(S_in[23:18]) , .s5_out(p5));
s6   instan_of_s6 (.s6_in(S_in[17:12]) , .s6_out(p6));
s7   instan_of_s7 (.s7_in(S_in[11:6])  , .s7_out(p7));
s8   instan_of_s8 (.s8_in(S_in[5:0])   , .s8_out(p8));
P    instan_of_P  (.data_in(P_in)      , .data_out(P_out));                

endmodule