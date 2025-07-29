module parity_gen_tb;
reg clk,x;
wire z;
initial begin
  clk=1'b0;
end

parity_gen dut(clk,x,z);

always #5 clk=~clk;

initial begin
  $dumpfile("parity.vcd");
  $dumpvars(0,parity_gen_tb);
  
end

initial begin
  $monitor($time," x=%b z=%b",x,z);
 
  x=0;#10 x=1;#10 x=1;#10 x=1;
  #10 x=0;#10 x=1;#10 x=1;#10 x=1;
  #10 $finish;

end
endmodule