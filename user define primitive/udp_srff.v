<<<<<<< HEAD
primitive udp_srff(q,s,r,clk,clr);
output q;
input s,r,clk,clr;
reg q;
table
  // S     R     clk   clr        Q   Q_new
     ?     ?      ?     1     :   ? :  0   ;
     ?     ?      ?     (10)  :   ? :  -   ;
     0     0     (01)     0   :   ? :  -   ;
     0     1     (01)     0   :   ? :  0   ;
     1     0     (01)     0   :   ? :  1   ; 
     1     1     (01)     0   :   ? :  x   ;
     ?     ?     (10)     0   :   ? :  -   ;

endtable  
=======
primitive udp_srff(q,s,r,clk,clr);
output q;
input s,r,clk,clr;
reg q;
table
  // S     R     clk   clr        Q   Q_new
     ?     ?      ?     1     :   ? :  0   ;
     ?     ?      ?     (10)  :   ? :  -   ;
     0     0     (01)     0   :   ? :  -   ;
     0     1     (01)     0   :   ? :  0   ;
     1     0     (01)     0   :   ? :  1   ; 
     1     1     (01)     0   :   ? :  x   ;
     ?     ?     (10)     0   :   ? :  -   ;

endtable  
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endprimitive