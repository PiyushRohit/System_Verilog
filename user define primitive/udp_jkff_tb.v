

module tb_udp_jkff;

    reg j, k, clk, clr;
    wire q;

    // Instantiate the UDP
    udp_jkff uut (q, j, k, clk, clr);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period
    end

    // Test sequence
    initial begin
        $display("Time\tclr j k clk q");
        $monitor("%0t\t%b  %b %b  %b   %b", $time, clr, j, k, clk, q);

        // Initial values
        clr = 0; j = 0; k = 0;

        // Apply asynchronous clear
        #3 clr = 1;
        #10 clr = 0;

        // Test JK=00 (hold)
        #10 j = 0; k = 0;
        #10;

        // Test JK=01 (reset)
        #10 j = 0; k = 1;
        #10;

        // Test JK=10 (set)
        #10 j = 1; k = 0;
        #10;

        // Test JK=11 (toggle)
        #10 j = 1; k = 1;
        #20;

        // Apply asynchronous clear again
        #5 clr = 1;
        #10 clr = 0;

        #10 $finish;
    end

endmodule
