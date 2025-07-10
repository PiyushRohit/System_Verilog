module adder16_tb;
reg[15:0] x,y;
wire[15:0]z;
wire carry;


adder16 dut(x,y,z,carry);
initial begin
  $dumpfile("adder16_tb.vcd");
  $dumpvars(0,adder16_tb);
  $monitor($time,"x=%h,y=%h,z=%h,carry=%b",x,y,z,carry);
  #5 x=16'h8fff;y=16'h8000;
  #5 x=16'hfffe;y=16'h0002;
  #5 x=16'haaaa;y=16'h5555;
  #5 $finish;

end

endmodule