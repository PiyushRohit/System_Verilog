<<<<<<< HEAD


module udp_tff_tb;

  wire q;
  reg clk, clr;

  // Instantiate the T Flip-Flop UDP
  udp_tff dut(q, clk, clr);

  // Clock generation: toggles every 5ns
  initial clk = 0;
  always #5 clk = ~clk;

  // Test sequence
  initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, udp_tff_tb);
    $monitor($time, " clk=%b clr=%b q=%b", clk, clr, q);

    clr = 1; #7;   // Apply asynchronous clear (should set q = 0)
    clr = 0; #10;  // Release clear → TFF starts toggling

    // Run for a few clock edges
    #40;

    $finish;
  end

endmodule
=======


module udp_tff_tb;

  wire q;
  reg clk, clr;

  // Instantiate the T Flip-Flop UDP
  udp_tff dut(q, clk, clr);

  // Clock generation: toggles every 5ns
  initial clk = 0;
  always #5 clk = ~clk;

  // Test sequence
  initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, udp_tff_tb);
    $monitor($time, " clk=%b clr=%b q=%b", clk, clr, q);

    clr = 1; #7;   // Apply asynchronous clear (should set q = 0)
    clr = 0; #10;  // Release clear → TFF starts toggling

    // Run for a few clock edges
    #40;

    $finish;
  end

endmodule
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
