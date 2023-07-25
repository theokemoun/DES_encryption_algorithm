module feistel_network 
  (
    input  wire [63:0] plaintext,
    
    input  wire [47:0] K1,
    input  wire [47:0] K2,
    input  wire [47:0] K3,
    input  wire [47:0] K4,
    input  wire [47:0] K5,
    input  wire [47:0] K6,
    input  wire [47:0] K7,
    input  wire [47:0] K8,
    input  wire [47:0] K9,
    input  wire [47:0] K10,
    input  wire [47:0] K11,
    input  wire [47:0] K12,
    input  wire [47:0] K13,
    input  wire [47:0] K14,
    input  wire [47:0] K15,
    input  wire [47:0] K16,    
    
    output wire [63:0] ciphertext
  );



    wire [31:0] L0;  wire [31:0] R0;
    reg  [31:0] L1;  reg  [31:0] R1;
    reg  [31:0] L2;  reg  [31:0] R2;
    reg  [31:0] L3;  reg  [31:0] R3;
    reg  [31:0] L4;  reg  [31:0] R4;
    reg  [31:0] L5;  reg  [31:0] R5;
    reg  [31:0] L6;  reg  [31:0] R6;
    reg  [31:0] L7;  reg  [31:0] R7;
    reg  [31:0] L8;  reg  [31:0] R8;
    reg  [31:0] L9;  reg  [31:0] R9;
    reg  [31:0] L10; reg  [31:0] R10;
    reg  [31:0] L11; reg  [31:0] R11;
    reg  [31:0] L12; reg  [31:0] R12;
    reg  [31:0] L13; reg  [31:0] R13;
    reg  [31:0] L14; reg  [31:0] R14;
    reg  [31:0] L15; reg  [31:0] R15;
    reg  [31:0] L16; reg  [31:0] R16;


    IP Initial_Permutation
      (
        .data_in(plaintext),
        .data_out({L0, R0})
      );

    wire [31:0] f1_out;
    wire [31:0] f2_out;
    wire [31:0] f3_out;
    wire [31:0] f4_out;
    wire [31:0] f5_out;
    wire [31:0] f6_out;
    wire [31:0] f7_out;
    wire [31:0] f8_out;
    wire [31:0] f9_out;
    wire [31:0] f10_out;
    wire [31:0] f11_out;
    wire [31:0] f12_out;
    wire [31:0] f13_out;
    wire [31:0] f14_out;
    wire [31:0] f15_out;
    wire [31:0] f16_out;

    f_function f1 (.R(R0), .Key(K1), .f_out(f1_out));
    f_function f2 (.R(R1), .Key(K2), .f_out(f2_out));
    f_function f3 (.R(R2), .Key(K3), .f_out(f3_out));
    f_function f4 (.R(R3), .Key(K4), .f_out(f4_out));
    f_function f5 (.R(R4), .Key(K5), .f_out(f5_out));
    f_function f6 (.R(R5), .Key(K6), .f_out(f6_out));
    f_function f7 (.R(R6), .Key(K7), .f_out(f7_out));
    f_function f8 (.R(R7), .Key(K8), .f_out(f8_out));
    f_function f9 (.R(R8), .Key(K9), .f_out(f9_out));
    f_function f10 (.R(R9), .Key(K10), .f_out(f10_out));
    f_function f11 (.R(R10), .Key(K11), .f_out(f11_out));
    f_function f12 (.R(R11), .Key(K12), .f_out(f12_out));
    f_function f13 (.R(R12), .Key(K13), .f_out(f13_out));
    f_function f14 (.R(R13), .Key(K14), .f_out(f14_out));
    f_function f15 (.R(R14), .Key(K15), .f_out(f15_out));
    f_function f16 (.R(R15), .Key(K16), .f_out(f16_out));


    always @(*) 
    begin
        R1 = L0^f1_out; L1 = R0;
        R2 = L1^f2_out; L2 = R1;
        R3 = L2^f3_out; L3 = R2;
        R4 = L3^f4_out; L4 = R3;
        R5 = L4^f5_out; L5 = R4;
        R6 = L5^f6_out; L6 = R5;
        R7 = L6^f7_out; L7 = R6;
        R8 = L7^f8_out; L8 = R7;
        R9 = L8^f9_out; L9 = R8;
        R10 = L9^f10_out; L10 = R9;
        R11 = L10^f11_out; L11 = R10;
        R12 = L11^f12_out; L12 = R11;
        R13 = L12^f13_out; L13 = R12;
        R14 = L13^f14_out; L14 = R13;
        R15 = L14^f15_out; L15 = R14;
        R16 = L15^f16_out; L16 = R15;
    end

    i_IP Inverse_Initial_Permutation (.data_in({R16, L16}), .data_out(ciphertext));

endmodule
