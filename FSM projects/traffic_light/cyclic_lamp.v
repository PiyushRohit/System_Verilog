module cyclic_lamp (clk,light);
input clk;
output reg [0:2]light;
parameter s0 =0,s1=1,s2=2 ;
parameter red=3'b100,green=3'b010,yellow=3'b001;
reg [0:1] state;
always @(posedge clk) begin
  case(state)
  s0:state<=s1;
  s1:state<=s2;
  s2:state<=s0;
  default:state<=s0;
  endcase  
end
always @(state)
case(state)
  s0:light=red;
  s1:light=green;
  s2:light=yellow;
  default:light=red;
endcase

  
endmodule