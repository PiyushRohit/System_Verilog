<<<<<<< HEAD
module mux4to1(in,sel,out);
 input[3:0]in;
 input[1:0]sel;
 output out;
 wire[1:0]t;

 mux2to1 m0(in[1:0],sel[0],t[0]);
 mux2to1 m1(in[3:2],sel[0],t[1]);
 mux2to1 m2(t,sel[1],out);
 

=======
module mux4to1(in,sel,out);
 input[3:0]in;
 input[1:0]sel;
 output out;
 wire[1:0]t;

 mux2to1 m0(in[1:0],sel[0],t[0]);
 mux2to1 m1(in[3:2],sel[0],t[1]);
 mux2to1 m2(t,sel[1],out);
 

>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endmodule