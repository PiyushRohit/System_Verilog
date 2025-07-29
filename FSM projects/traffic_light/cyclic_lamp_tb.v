module cyclic_lamp_tb;
wire [0:2]light;
reg clk;

cyclic_lamp dut(clk,light);
initial begin
  clk=1'b0;
end

always #5 clk=~clk;

initial begin
  $dumpfile("lamp.vcd");
  $dumpvars(0,cyclic_lamp_tb);
  $monitor($time," light=%b",light);
  #50 $finish;
end


endmodule