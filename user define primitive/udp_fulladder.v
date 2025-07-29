module udp_fulladder(sum,carry,a,b,c);
input a,b,c;
output sum,carry;
udp_sum s1(sum,a,b,c);
udp_carry c1(carry,a,b,c);

endmodule