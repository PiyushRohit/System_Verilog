<<<<<<< HEAD
module mux16to1_tb;
  reg[15:0]A ;
  reg[3:0]S;
  wire F;
  mux16to1 m(.in(A),.sel(S),.out(F));

  initial begin
    $dumpfile("mux16to1_tb.vcd");
    $dumpvars(0,mux16to1_tb);
    $monitor($time," A=%h,S=%h,F=%b",A,S,F);
    #5 A=16'h3f0a;S=4'h0;
    #5 S=4'h6;
    #5 S=4'hc;
    #5 $finish;

  end
=======
module mux16to1_tb;
  reg[15:0]A ;
  reg[3:0]S;
  wire F;
  mux16to1 m(.in(A),.sel(S),.out(F));

  initial begin
    $dumpfile("mux16to1_tb.vcd");
    $dumpvars(0,mux16to1_tb);
    $monitor($time," A=%h,S=%h,F=%b",A,S,F);
    #5 A=16'h3f0a;S=4'h0;
    #5 S=4'h6;
    #5 S=4'hc;
    #5 $finish;

  end
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endmodule