module tb();

  wire [15:0] z;
  reg [3:0] rs1, rs2, rd, func;
  reg [7:0] addr;
  reg clk1, clk2;
  integer k;

  // Instantiate the DUT (Design Under Test)
  pipeline dut(z, rs1, rs2, rd, func, addr, clk1, clk2);

  // Generate clocks
  initial begin
    clk1 = 0; clk2 = 0;
    repeat(20) begin
      #5 clk1 = 1; #5 clk1 = 0;
      #5 clk2 = 1; #5 clk2 = 0;
    end
  end

  // Initialize register bank
  initial begin
    for (k = 0; k < 16; k = k + 1)
      dut.regbank[k] = k;
  end

  // Stimulus
  initial begin
    #5  rs1=1;  rs2=5;  rd=10; func=0;  addr=125; // ADD
    #20 rs1=3;  rs2=8;  rd=12; func=2;  addr=126; // MUL
    #20 rs1=10; rs2=5;  rd=14; func=1;  addr=128; // SUB
    #20 rs1=7;  rs2=3;  rd=13; func=11; addr=127; // SLA (shift left)
    #20 rs1=10; rs2=5;  rd=15; func=1;  addr=129; // SUB
    #20 rs1=12; rs2=13; rd=0;  func=0;  addr=130; // ADD (changed rd=16 → rd=0)
  end

  // Display memory contents after sufficient delay
  initial begin
    #220;
    $display("\n--- Memory Contents ---");
    for (k = 125; k <= 130; k = k + 1)
      $display("mem[%3d] = %3d", k, dut.mem[k]);
  end

  // Dump waveforms
  initial begin
    $dumpfile("pipeline.vcd");
    $dumpvars(0, tb);
    $monitor("Time: %3d | zout = %3d", $time, z);
    #300 $finish;
  end

endmodule
