module tb1;
  reg clk1,clk2;
  integer  k;

  mips32 dut(clk1,clk2);

  initial begin
    clk1=0; clk2=0;
    repeat(20) begin
     #5 clk1=1 ; #5 clk1=0;
     #5 clk2 =1; #5 clk2=0;
    end
  end

  initial begin

   for(k=0;k<31;k=k+1)

   dut.register[k]=k;

   dut.mem[0]=32'h2801000a ;
   dut.mem[1]=32'h28020014;
   dut.mem[2]= 32'h28030019;
   dut.mem[3] =32'h0ce77800;
   dut.mem[4] = 32'h0ce77800;
   dut.mem[5]= 32'h00222000;
   dut.mem[6]= 32'h0ce77800;
   dut.mem[7]= 32'h00832800;
   dut.mem[8]= 32'hfc00000;

   dut.HALTED =0;
   dut.PC=0;
   dut.TAKEN_BRANCH=0;

   #280
   for(k=0 ; k<6 ;k++) begin
    $display(" R :%1d =%2d" ,k,dut.register[k]);
   end

  end

  initial begin
  $dumpfile("dut.vcd");
  $dumpvars(0,tb1);
  #300 $finish;

  end

endmodule