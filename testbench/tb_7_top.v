
`timescale 1ns/1ns
`default_nettype none 
module tb_7_top();

reg  	  	   tb_clk = 0;
reg  	  	   tb_reset = 1;
//reg 	[63:0] tb_key_in;
//reg 	[63:0] tb_data_in;
reg 	  	   tb_load = 0;
wire	[63:0] tb_data_out;
reg		[63:0]  key_test,
				key_test_sample,
				key_test_sample_2,
				plaintext_test,
				plaintext_test_sample,
				plaintext_test_sample_2,
				ciphertext_test, 
				ciphertext_test_sample, 
				ciphertext_test_sample_2;
				
integer   	   data_file_in;
integer    	   statusD;
reg		[31:0] comper;		// string
reg 		   load_sample;
reg 		   load_sample_2;

always begin				//10MHz
	#50 tb_clk = ~tb_clk;
end

initial begin
	#140 tb_reset = 0; 
	#250 tb_load = 1;
	#400 tb_load = 0;
	#100 tb_load = 1;
	#100 tb_load = 0;
	#100 tb_load = 1;	
end

initial begin
	data_file_in = $fopen("test_vectors.txt", "r");
	if ($feof(data_file_in))
		$fclose(data_file_in);
end
 
always @ (posedge tb_clk)
if (tb_reset) load_sample <= 1'b0;
else load_sample <= tb_load;

always @ (posedge tb_clk)
if (tb_reset) load_sample_2 <= 1'b0;
else load_sample_2 <= load_sample;

always @ (posedge tb_clk)
	if (tb_reset) begin
		ciphertext_test_sample   <= 64'b0;
		ciphertext_test_sample_2 <= 64'b0;
		plaintext_test_sample    <= 64'b0;
		plaintext_test_sample_2  <= 64'b0;
		key_test_sample          <= 64'b0;
		key_test_sample_2        <= 64'b0;
		
	end
	else begin
		ciphertext_test_sample   <= ciphertext_test;
		ciphertext_test_sample_2 <= ciphertext_test_sample;
		plaintext_test_sample    <= plaintext_test;
		plaintext_test_sample_2  <= plaintext_test_sample;
		key_test_sample          <= key_test;
		key_test_sample_2        <= key_test_sample;		
	end

initial 
begin
  key_test = 'h0;
  plaintext_test = 'h0;
  ciphertext_test = 'h0;
  while (!$feof(data_file_in)) begin
  	@ (negedge tb_clk); // timing constrain - minimum half cycle for setup of load
	if (tb_load == 1)
		statusD = $fscanf(data_file_in,"%h %h %h\n" , key_test, plaintext_test, ciphertext_test);
  end
end

reg flag;
always @(*) /* (posedge tb_clk)*/ begin	
	if (tb_reset)
		comper = "RST";
	else if (load_sample_2) begin
			if (ciphertext_test_sample_2 == tb_data_out)
				comper = "PASS";
			else 
				comper = "FAIL";
	end	else
		comper = "WAIT";
end

initial  
	$monitor("time = %8t | K = %016h | P = %016h | C = %016h | result = %016h | %s",
			$time, key_test_sample_2, plaintext_test_sample_2, ciphertext_test_sample_2, tb_data_out, comper);

lab_7_top DUT
(
.clk (tb_clk),
.reset (tb_reset),
.key_in (key_test),
.data_in (plaintext_test),
.load (tb_load),
.data_out (tb_data_out)
);

endmodule