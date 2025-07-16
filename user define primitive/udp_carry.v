primitive udp_carry(carry,a,b,c);
  output carry;
  input a,b,c;
  table
  // a  b  c  cout
     0  0  0 : 0;
     0  0  1 : 0;
     0  1  0 : 0;
     0  1  1 : 1;
     1  0  0 : 0;
     1  0  1 : 1;
     1  1  0 : 1;
     1  1  1 : 1;
endtable
endprimitive