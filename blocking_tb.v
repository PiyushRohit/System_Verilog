module blocking_tb;
  wire [31:0] a, b, c, d;

  // Instantiate the module
  blocking uut(a, b, c, d);

  initial begin
    $monitor($time, " a=%4d, b=%4d, c=%4d, d=%4d", a, b, c, d);
    #100 $finish;
  end
endmodule

