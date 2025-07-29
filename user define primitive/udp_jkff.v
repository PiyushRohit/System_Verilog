<<<<<<< HEAD
primitive udp_jkff(q,j,kclk,clr);
    output q;
    input j,k,clk,clr;
    reg q;

    table
      // j   k  clk  clr  q   q_new
         ?   ?   ?    1  :  ? :  0   ;
         ?   ?   ? (10)  :  ? :  -   ;
         0   0  (10) 0   :  ? :  -   ;
         0   1  (10) 0   :  ? :  0   ;
         1   0  (10) 0   :  ? :  1   ;
         
         1   1  (10) 0   :  0 :  1   ;
         1   1  (10) 0   :  1 :  0   ;
         ?   ?  (01) 0   :  ? :  -   ;
    endtable

=======
primitive udp_jkff(q,j,kclk,clr);
    output q;
    input j,k,clk,clr;
    reg q;

    table
      // j   k  clk  clr  q   q_new
         ?   ?   ?    1  :  ? :  0   ;
         ?   ?   ? (10)  :  ? :  -   ;
         0   0  (10) 0   :  ? :  -   ;
         0   1  (10) 0   :  ? :  0   ;
         1   0  (10) 0   :  ? :  1   ;
         
         1   1  (10) 0   :  0 :  1   ;
         1   1  (10) 0   :  1 :  0   ;
         ?   ?  (01) 0   :  ? :  -   ;
    endtable

>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endprimitive