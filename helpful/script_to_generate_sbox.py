
sbox = [[15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10],
       [3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5],
       [0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15],
       [13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]]
bin_arr = []
for a in range(2):
    for b in range(2):
        for c in range(2):
            for d in range(2):
                for e in range(2):
                    for f in range(2):
                        #print(f"6'b{a}{b}{c}{d}{e}{f} : s2_out = ")
                        my_list = f"{a}{b}{c}{d}{e}{f}"
                        bin_arr.append(my_list)
val = 0
for r in bin_arr:
    val = sbox[int((r[0]+r[-1]),2)][int((r[1:-1]),2)]
    print(f"6'b{r} : s2_out = 4'd{val};")

print("-----------------------------")
###############################################
############# testbench #######################
print('''`timescale 1 ps / 1 ps
module sbox_tb;

  // Declare inputs and outputs
  reg [5:0] x;
  wire [3:0] S_x;

  // Instantiate the unit under test
  s2 dut (
    .s2_in(x),
    .s2_out(S_x)
  );

  // Generate clock signal
  reg clk = 0;
  always #5 clk = ~clk;

  // Stimulus generation
  initial begin
    // Write test cases
''')
for i in range(64):
    print(f" x = 6'd{i}; \n #10;")
print('''    // End simulation
    $finish;
  end

  // Monitor output
  always @(S_x) 
	$display("time = %8t | x=%d  | S_x = %d ",$time,x,S_x);


endmodule
''')