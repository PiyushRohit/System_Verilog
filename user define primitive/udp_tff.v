primitive udp_tff(q,clk,clr);
output q;
input clk,clr;
reg q;

table 
    // clk   clr   q   q_new
        ?     1  :  ? : 0;
        1    (10):  ? : -;
        (10)  0  :  1 : 0;
        (10)  0  :  0 : 1;
        (0?)  0  :  ? : -;
endtable
endprimitive