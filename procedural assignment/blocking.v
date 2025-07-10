module blocking(output reg [31:0] a, b, c, d);
    initial begin
        a=30;b=20;c=15;d=5;
        repeat(4) begin
            #5 a = b + c;
            #5 d = a - 3;
            #5 b = d + 10;
            #5 c = c + 1;
        end
    end
endmodule
