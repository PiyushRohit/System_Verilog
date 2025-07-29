module xorbitwise_tb;
reg[15:0]x,y;
wire[15:0]out;

xorbitwise uut(.f(out),.a(x),.b(y));

initial begin
  $monitor("x=%b,y=%b,out=%b",x,y,out);
  x=16'haaaa;y=16'h00ff;
  #10 x=16'h0f0f;y=16'h3333;
  #20 $finish;
end
endmodule