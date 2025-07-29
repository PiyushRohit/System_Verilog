<<<<<<< HEAD
primitive udp_dlatch(q,d,clk,clr);
output  q;
input d, clk, clr;
reg q;

table
  // d  clk  clr     q   q_new
     ?   ?    1   :   ?  :  0;
     0   1    0   :   ?  :  0;
     1   1    0   :   ?  :  1;
     ?   0    0   :   ?  :  -;
     
endtable

=======
primitive udp_dlatch(q,d,clk,clr);
output  q;
input d, clk, clr;
reg q;

table
  // d  clk  clr     q   q_new
     ?   ?    1   :   ?  :  0;
     0   1    0   :   ?  :  0;
     1   1    0   :   ?  :  1;
     ?   0    0   :   ?  :  -;
     
endtable

>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endprimitive