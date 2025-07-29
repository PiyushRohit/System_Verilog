`timescale 1ns/1ps
module RCA_tb;

    wire [7:0] sum;
    reg  [7:0] a, b;
    reg        cin;
    wire       cout;

    // Instantiate RCA (Ripple Carry Adder)
    RCA #(.N(8)) dut (
        .cout(cout),
        .sum(sum),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin
        $dumpfile("RCA.vcd");
        $dumpvars(0, RCA_tb);
        $monitor($time, " A=%h B=%h Cin=%b => Sum=%h Cout=%b", a, b, cin, sum, cout);

        // Apply test vectors
        a = 8'h11; b = 8'h00; cin = 1'b1; #10;
        a = 8'h71; b = 8'h01; cin = 1'b0; #10;
        a = 8'hF1; b = 8'h01; cin = 1'b0; #10;

        $finish;
    end

endmodule
