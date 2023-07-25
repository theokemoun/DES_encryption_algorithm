module key_schedule
(
   input wire  [63:0] key_in,
   output wire [47:0] K1,
   output wire [47:0] K2,
   output wire [47:0] K3,
   output wire [47:0] K4,
   output wire [47:0] K5,
   output wire [47:0] K6,
   output wire [47:0] K7,
   output wire [47:0] K8,
   output wire [47:0] K9,
   output wire [47:0] K10,
   output wire [47:0] K11,
   output wire [47:0] K12,
   output wire [47:0] K13,
   output wire [47:0] K14,
   output wire [47:0] K15,
   output wire [47:0] K16
);

wire [27:0] c0;
wire [27:0] d0;
reg  [27:0] c1;
reg  [27:0] d1;
reg  [27:0] c2;
reg  [27:0] d2;
reg  [27:0] c3;
reg  [27:0] d3;
reg  [27:0] c4;
reg  [27:0] d4;
reg  [27:0] c5;
reg  [27:0] d5;
reg  [27:0] c6;
reg  [27:0] d6;
reg  [27:0] c7;
reg  [27:0] d7;
reg  [27:0] c8;
reg  [27:0] d8;
reg  [27:0] c9;
reg  [27:0] d9;
reg  [27:0] c10;
reg  [27:0] d10;
reg  [27:0] c11;
reg  [27:0] d11;
reg  [27:0] c12;
reg  [27:0] d12;
reg  [27:0] c13;
reg  [27:0] d13;
reg  [27:0] c14;
reg  [27:0] d14;
reg  [27:0] c15;
reg  [27:0] d15;
reg  [27:0] c16;
reg  [27:0] d16;


always @(*)
    begin  
        // 0->1 one shift
        d1 = {d0[26:0], d0[27]};
        c1 = {c0[26:0], c0[27]};
        // 1->2 one shift
        d2 = {d1[26:0], d1[27]};
        c2 = {c1[26:0], c1[27]};     
        // 2->3 two shift
        d3 = {d2[25:0], d2[27:26]};
        c3 = {c2[25:0], c2[27:26]};     
        // 3->4 two shift
        d4 = {d3[25:0], d3[27:26]};
        c4 = {c3[25:0], c3[27:26]};      
        // 4->5 two shift
        d5 = {d4[25:0], d4[27:26]};
        c5 = {c4[25:0], c4[27:26]};      
        // 5->6 two shift
        d6 = {d5[25:0], d5[27:26]};
        c6 = {c5[25:0], c5[27:26]};     
        // 6->7 two shift 
        d7 = {d6[25:0], d6[27:26]};
        c7 = {c6[25:0], c6[27:26]};     
        // 7->8 two shift 
        d8 = {d7[25:0], d7[27:26]};
        c8 = {c7[25:0], c7[27:26]};    
        // 8->9 one shift 
        d9 = {d8[26:0], d8[27]};
        c9 = {c8[26:0], c8[27]};     
        // 9->10 two shift
        d10 = {d9[25:0], d9[27:26]};
        c10 = {c9[25:0], c9[27:26]};     
        // 10->11 two shift
        d11 = {d10[25:0], d10[27:26]};
        c11 = {c10[25:0], c10[27:26]};   
        // 11->12 two shift 
        d12 = {d11[25:0], d11[27:26]};
        c12 = {c11[25:0], c11[27:26]};   
        // 12->13 two shift
        d13 = {d12[25:0], d12[27:26]};
        c13 = {c12[25:0], c12[27:26]};    
        // 13->14 two shift
        d14 = {d13[25:0], d13[27:26]};
        c14 = {c13[25:0], c13[27:26]};   
        // 14->15 two shift
        d15 = {d14[25:0], d14[27:26]};
        c15 = {c14[25:0], c14[27:26]};  
        // 15->16 one shift
        d16 = {d15[26:0], d15[27]};
        c16 = {c15[26:0], c15[27]};
    end


 PC1 PC1_0  (.key(key_in), .cbits(c0), .dbits(d0));
 
PC2 PC2_1  (.data_in({c1, d1}  ), .data_out(K1) );
PC2 PC2_2  (.data_in({c2, d2}  ), .data_out(K2) );
PC2 PC2_3  (.data_in({c3, d3}  ), .data_out(K3) );
PC2 PC2_4  (.data_in({c4, d4}  ), .data_out(K4) );
PC2 PC2_5  (.data_in({c5, d5}  ), .data_out(K5) );
PC2 PC2_6  (.data_in({c6, d6}  ), .data_out(K6) );
PC2 PC2_7  (.data_in({c7, d7}  ), .data_out(K7) );
PC2 PC2_8  (.data_in({c8, d8}  ), .data_out(K8) );
PC2 PC2_9  (.data_in({c9, d9}  ), .data_out(K9) );
PC2 PC2_10 (.data_in({c10, d10}), .data_out(K10));
PC2 PC2_11 (.data_in({c11, d11}), .data_out(K11));
PC2 PC2_12 (.data_in({c12, d12}), .data_out(K12));
PC2 PC2_13 (.data_in({c13, d13}), .data_out(K13));
PC2 PC2_14 (.data_in({c14, d14}), .data_out(K14));
PC2 PC2_15 (.data_in({c15, d15}), .data_out(K15));
PC2 PC2_16 (.data_in({c16, d16}), .data_out(K16));

 
endmodule