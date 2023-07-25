`timescale 1 ns / 1 ps

module lab_7_top
(
	input clk ,
	input reset ,
	input load ,
	input      [63:0] data_in ,
	input      [63:0] key_in ,
	output reg [63:0] data_out
);

integer data_file_in; 
reg load_d;

initial 
	data_file_in = $fopen("stubLab7_vectors.txt", "r");

always @(posedge clk or posedge reset)
	if (reset)
		load_d <= 1'b0;
	else load_d <= load;

always @(posedge clk or posedge reset)
	if (reset)
		data_out <= 64'b0;
	else if (load_d)
		if ( ! $feof(data_file_in))
			$fscanf(data_file_in,"%h\n", data_out);
		else begin
				 $fclose(data_file_in);
				 $finish("stub_file is finished");
		end 

endmodule

