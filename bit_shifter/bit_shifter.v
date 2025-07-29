<<<<<<< HEAD
module bit_shifter(clk,clr,A,E);
    input clk,clr,A;
    output reg E;
    reg B,C,D;
    always @(posedge clk or negedge clr)
    begin
         if(!clr) begin B=0;C=0;D=0;E=0; end
         else begin
              E=D;
              D=C;
              C=B;
              B=A;
        

         end

    end

  
=======
module bit_shifter(clk,clr,A,E);
    input clk,clr,A;
    output reg E;
    reg B,C,D;
    always @(posedge clk or negedge clr)
    begin
         if(!clr) begin B=0;C=0;D=0;E=0; end
         else begin
              E=D;
              D=C;
              C=B;
              B=A;
        

         end

    end

  
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
endmodule