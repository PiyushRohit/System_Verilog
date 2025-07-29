<<<<<<< HEAD
module nonblocking(
    output reg [31:0] a, b, c, d,
    input clock
);
    // Initialize b and c only once
    initial begin
        b = 20;
        c = 15;
        a = 30;
        d = 5;
    end

    // Perform non-blocking assignments on clock edge
    always @(posedge clock) begin
        a <= b + c;
        d <= a - 3;
        b <= d + 10;
        c <= c + 1;
    end
endmodule
=======
module nonblocking(
    output reg [31:0] a, b, c, d,
    input clock
);
    // Initialize b and c only once
    initial begin
        b = 20;
        c = 15;
        a = 30;
        d = 5;
    end

    // Perform non-blocking assignments on clock edge
    always @(posedge clock) begin
        a <= b + c;
        d <= a - 3;
        b <= d + 10;
        c <= c + 1;
    end
endmodule
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
