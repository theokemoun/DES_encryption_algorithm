
module PC1
(
 input [0:63] key,
 output [0:27] cbits,
 output [0:27] dbits
);

assign cbits[0]  = key[56];
assign cbits[1]  = key[48];
assign cbits[2]  = key[40];
assign cbits[3]  = key[32];
assign cbits[4]  = key[24];
assign cbits[5]  = key[16];
assign cbits[6]  = key[8];
assign cbits[7]  = key[0];
assign cbits[8]  = key[57];
assign cbits[9]  = key[49];
assign cbits[10] = key[41];
assign cbits[11] = key[33];
assign cbits[12] = key[25];
assign cbits[13] = key[17];
assign cbits[14] = key[9];
assign cbits[15] = key[1];
assign cbits[16] = key[58];
assign cbits[17] = key[50];
assign cbits[18] = key[42];
assign cbits[19] = key[34];
assign cbits[20] = key[26];
assign cbits[21] = key[18];
assign cbits[22] = key[10];
assign cbits[23] = key[2];
assign cbits[24] = key[59];
assign cbits[25] = key[51];
assign cbits[26] = key[43];
assign cbits[27] = key[35];


assign dbits[0]  = key[62];
assign dbits[1]  = key[54];
assign dbits[2]  = key[46];
assign dbits[3]  = key[38];
assign dbits[4]  = key[30];
assign dbits[5]  = key[22];
assign dbits[6]  = key[14];
assign dbits[7]  = key[6];
assign dbits[8]  = key[61];
assign dbits[9]  = key[53];
assign dbits[10] = key[45];
assign dbits[11] = key[37];
assign dbits[12] = key[29];
assign dbits[13] = key[21];
assign dbits[14] = key[13];
assign dbits[15] = key[5];
assign dbits[16] = key[60];
assign dbits[17] = key[52];
assign dbits[18] = key[44];
assign dbits[19] = key[36];
assign dbits[20] = key[28];
assign dbits[21] = key[20];
assign dbits[22] = key[12];
assign dbits[23] = key[4];
assign dbits[24] = key[27];
assign dbits[25] = key[19];
assign dbits[26] = key[11];
assign dbits[27] = key[3];

endmodule
