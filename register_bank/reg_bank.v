module reg_bank(
  rddata1,rddata2,wrdata,sr1,sr2,dr,write,reset,clk
);

input [31:0] wrdata;
input reset,clk,write;
output [31:0] rddata1,rddata2;
input [4:0] sr1,sr2,dr;
integer k;

reg[31:0] regfile[0:31];

assign rddata1=regfile[sr1];
assign rddata2=regfile[sr2];

always @(posedge clk)
begin
  if(reset)begin
    for(k=0;k<32;k=k+1)
    regfile[k]=0;
  end
  else
  begin
    if(write)
     regfile[dr]<=wrdata;
  end

end
endmodule