<<<<<<< HEAD
module nonblocking_tb;
    reg clock;
    wire [31:0] a, b, c, d;

    // Instantiate the DUT (Design Under Test)
    nonblocking uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .clock(clock)
    );

    // Generate a clock with a 10 time-unit period
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    // Display the values at each time step
    initial begin
        $monitor($time, " a=%4d, b=%4d, c=%4d, d=%4d", a, b, c, d);
        #100 $finish;
    end
endmodule
=======
module nonblocking_tb;
    reg clock;
    wire [31:0] a, b, c, d;

    // Instantiate the DUT (Design Under Test)
    nonblocking uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .clock(clock)
    );

    // Generate a clock with a 10 time-unit period
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    // Display the values at each time step
    initial begin
        $monitor($time, " a=%4d, b=%4d, c=%4d, d=%4d", a, b, c, d);
        #100 $finish;
    end
endmodule
>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
