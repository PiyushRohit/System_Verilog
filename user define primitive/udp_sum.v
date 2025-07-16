primitive udp_sum(sum,a,b,c);
output sum;
input a,b,c;

table
  // a     b     c        sum
     0     0     0    :    0;
     0     0     1    :    1;
     0     1     0    :    1;
     0     1     1    :    0;
     1     0     0    :    1;
     1     0     1    :    0;
     1     1     0    :    0;
     1     1     1    :    1;
endtable

endprimitive