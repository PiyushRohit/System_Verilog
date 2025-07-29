module bit_shifter_tb;
wire E;
reg clk,clr,A;

bit_shifter DUT(clk,clr,A,E);

initial
begin
  clk=1'b0;
  #2 clr=0;
  #5 clr=1;
end


always #5 clk= ~clk;

initial begin
  #2;
  repeat(2)
  begin
    #10 A=0;
    #10 A=0;
    #10 A=1;
    #10 A=1;
  end 
end




initial
begin
  $dumpfile("shifter.vcd");
  $dumpvars(0,bit_shifter_tb);
  #200 $finish;
end


endmodule