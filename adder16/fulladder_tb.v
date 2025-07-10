module fulladder_tb;
   reg a,b,c;
   wire sum,carry;
   integer correct;


   fulladder dut(a,b,c,sum,carry);
   initial begin
    $monitor($time,"a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);
    correct=1;

    #5 a=1;b=1;c=0;#5 ;
    #5 ;if( (sum!=0) || (carry!= 1)) correct=0;

    #5 a=1;b=1;c=1;#5 ;
    #5 ;if( (sum!=1) || (carry!= 1)) correct=0;

    #5 a=0;b=1;c=0;#5 ;
    #5 ;if( (sum!=1) || (carry!= 0)) correct=0;

    #5 $display("correct = %d",correct);



   end
endmodule