module dff_negedge_tb;
reg D,Clock;
wire Q,Qbar;

dff_negedge dut(D,Clock,Q,Qbar);

initial begin
        Clock = 0;
        forever #5 Clock = ~Clock;
    end
initial begin

  $dumpfile("dff_negedge_tb.vcd");
  $dumpvars(0, dff_negedge_tb);
  $monitor($time," D=%b | Q=%b | Qbar=%b ",D,Q,Qbar);
  D=1'b0;
  #5 D=1'b1;
  #5 D=1'b1;
  #5 D=1'b0;
  $finish;


end

endmodule