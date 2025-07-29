<<<<<<< HEAD
module adder16(x,y,z,carry);
  input[15:0] x,y;
  
  output [15:0] z;
  output carry;
  wire t [3:1] ;
  adder4 a0(z[3:0],t[1],x[3:0],y[3:0],1'b0);
  adder4 a1(z[7:4],t[2],x[7:4],y[7:4],t[1]);
  adder4 a2(z[11:8],t[3],x[11:8],y[11:8],t[2]);
  adder4 a3(z[15:12],carry,x[15:12],y[15:12],t[3]);


  
endmodule
=======
module adder16(x,y,z,carry);
  input[15:0] x,y;
  
  output [15:0] z;
  output carry;
  wire t [3:1] ;
  adder4 a0(z[3:0],t[1],x[3:0],y[3:0],1'b0);
  adder4 a1(z[7:4],t[2],x[7:4],y[7:4],t[1]);
  adder4 a2(z[11:8],t[3],x[11:8],y[11:8],t[2]);
  adder4 a3(z[15:12],carry,x[15:12],y[15:12],t[3]);


  
endmodule
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
