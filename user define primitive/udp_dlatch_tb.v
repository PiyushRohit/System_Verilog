module udp_dlatch_tb ;
  wire q;
  reg d,clk,clr;


udp_dlatch dup(q,d,clk,clr);
initial begin
  $dumpfile("dlatch.vcd");
  $dumpvars(0,udp_dlatch_tb);
  $monitor($time," clr=%b clk=%b d=%b q=%b",clr,clk,d,q);
  clr = 1; clk = 0; d = 0; #5;  // Clear active → q should go to 0
    clr = 0; #5;                  // Clear deasserted

    d = 1; clk = 1; #5;           // Latch d = 1
    clk = 0; #5;                 

    d = 0; #5;                    // d changes, clk = 0 → no effect
    clk = 1; #5;                 // Latch d = 0

    clr = 1; #5;                 // Asynchronous clear
    clr = 0; #5
  $finish;


end
  
endmodule