module reg_bank_tb;
wire [31:0]rddata1,rddata2;
reg clk,reset,write;
reg[4:0] sr1,sr2,dr;
reg[31:0] wrdata;
integer k;

reg_bank dut(rddata1,rddata2,wrdata,sr1,sr2,dr,write,reset,clk);

initial begin
  clk=0;
  forever begin
    #5 clk=~clk;
  end
end

initial begin
  $dumpfile("reg_bank.vcd");
  $dumpvars(0,reg_bank_tb);
  #1 reset=1;
     write=0;
  #5 reset=0;   
end

initial begin
  #7 
  for (k =0 ; k<32 ;k=k+1 ) begin
    dr=k; wrdata=10*k;write=1;
    #10 write=0;
  end

  #20
  for (k =0 ;k<32 ;k=k+2 ) begin
    sr1=k;sr2=k+1;
    #5;
    $display(" reg[%2d]=%d  reg[%2d]=%d ",sr1,rddata1,sr2,rddata2);

  end
  #2000 $finish;
end

endmodule