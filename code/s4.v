
module s4
(
input wire [5:0] s4_in,
output reg [3:0] s4_out
);

always @ (*)
    case(s4_in)
            6'b000000 : s4_out = 4'd7;
            6'b000001 : s4_out = 4'd13;
            6'b000010 : s4_out = 4'd13;
            6'b000011 : s4_out = 4'd8;
            6'b000100 : s4_out = 4'd14;
            6'b000101 : s4_out = 4'd11;
            6'b000110 : s4_out = 4'd3;
            6'b000111 : s4_out = 4'd5;
            6'b001000 : s4_out = 4'd0;
            6'b001001 : s4_out = 4'd6;
            6'b001010 : s4_out = 4'd6;
            6'b001011 : s4_out = 4'd15;
            6'b001100 : s4_out = 4'd9;
            6'b001101 : s4_out = 4'd0;
            6'b001110 : s4_out = 4'd10;
            6'b001111 : s4_out = 4'd3;
            6'b010000 : s4_out = 4'd1;
            6'b010001 : s4_out = 4'd4;
            6'b010010 : s4_out = 4'd2;
            6'b010011 : s4_out = 4'd7;
            6'b010100 : s4_out = 4'd8;
            6'b010101 : s4_out = 4'd2;
            6'b010110 : s4_out = 4'd5;
            6'b010111 : s4_out = 4'd12;
            6'b011000 : s4_out = 4'd11;
            6'b011001 : s4_out = 4'd1;
            6'b011010 : s4_out = 4'd12;
            6'b011011 : s4_out = 4'd10;
            6'b011100 : s4_out = 4'd4;
            6'b011101 : s4_out = 4'd14;
            6'b011110 : s4_out = 4'd15;
            6'b011111 : s4_out = 4'd9;
            6'b100000 : s4_out = 4'd10;
            6'b100001 : s4_out = 4'd3;
            6'b100010 : s4_out = 4'd6;
            6'b100011 : s4_out = 4'd15;
            6'b100100 : s4_out = 4'd9;
            6'b100101 : s4_out = 4'd0;
            6'b100110 : s4_out = 4'd0;
            6'b100111 : s4_out = 4'd6;
            6'b101000 : s4_out = 4'd12;
            6'b101001 : s4_out = 4'd10;
            6'b101010 : s4_out = 4'd11;
            6'b101011 : s4_out = 4'd1;
            6'b101100 : s4_out = 4'd7;
            6'b101101 : s4_out = 4'd13;
            6'b101110 : s4_out = 4'd13;
            6'b101111 : s4_out = 4'd8;
            6'b110000 : s4_out = 4'd15;
            6'b110001 : s4_out = 4'd9;
            6'b110010 : s4_out = 4'd1;
            6'b110011 : s4_out = 4'd4;
            6'b110100 : s4_out = 4'd3;
            6'b110101 : s4_out = 4'd5;
            6'b110110 : s4_out = 4'd14;
            6'b110111 : s4_out = 4'd11;
            6'b111000 : s4_out = 4'd5;
            6'b111001 : s4_out = 4'd12;
            6'b111010 : s4_out = 4'd2;
            6'b111011 : s4_out = 4'd7;
            6'b111100 : s4_out = 4'd8;
            6'b111101 : s4_out = 4'd2;
            6'b111110 : s4_out = 4'd4;
            6'b111111 : s4_out = 4'd14;
    endcase
endmodule

            
    
    
    
