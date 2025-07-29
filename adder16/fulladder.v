<<<<<<< HEAD
module fulladder( sum, cout,a, b, cin );
   output sum,cout;
   input a,b,cin;

  
    wire t1, t2, t3;
    xor (t1, a, b);
    xor (sum, t1, cin);
    and (t2, a, b);
    and (t3, t1, cin);
    or  (cout, t2, t3);
endmodule
=======
module fulladder( sum, cout,a, b, cin );
   output sum,cout;
   input a,b,cin;

  
    wire t1, t2, t3;
    xor (t1, a, b);
    xor (sum, t1, cin);
    and (t2, a, b);
    and (t3, t1, cin);
    or  (cout, t2, t3);
endmodule
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
