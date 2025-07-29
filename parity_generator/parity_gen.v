module parity_gen(clk,x,z);
input clk,x;
output reg z;
parameter even =0,odd=1 ;
reg even_odd;
always @(posedge clk)
  case(even_odd)
  even:even_odd=x?odd:even;
  odd:even_odd=x?even:odd;
  default:even_odd<=even;
  endcase

always @(even_odd)
  case(even_odd)
  even:z=0;
  odd:z=1;
  endcase

endmodule