module bcd_counter_tb();

reg clk = 0, up = 0, down = 0, reset = 0;
wire [3:0] count;

bcd_counter uut(count, up, down, clk, reset);

// Generate clock
always #5 clk = ~clk;

initial begin
  $dumpfile("counter.vcd");
  $dumpvars(0,bcd_counter_tb);

  reset = 1; #10;
  reset = 0;

  up = 1;
  repeat(12) #10;  // Count up past 9

  up = 0;
  down = 1;
  repeat(12) #10;  // Count down past 0

  $finish;
end

endmodule
