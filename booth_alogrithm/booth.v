`timescale 1ns/1ps

module booth(
    input lda, ldq, ldm, clra, clrq, clrff, sfta, sftq, addsub, decr, ldcnt, clk,
    input [15:0] data_in,
    output qm1, eqz
);

    wire [15:0] A, M, Q, Z;
    wire [4:0] count;

    // eqz: 1 when count == 0
    assign eqz = (count == 0);

    // A register
    shift_reg AR(
        .data_out(A),
        .data_in(Z),
        .s_in(A[15]),
        .clk(clk),
        .ld(lda),
        .clr(clra),
        .sft(sfta)
    );

    // Q register
    shift_reg QR(
        .data_out(Q),
        .data_in(data_in),
        .s_in(A[0]),
        .clk(clk),
        .ld(ldq),
        .clr(clrq),
        .sft(sftq)
    );

    // Q(-1) register
    dff QM1(
        .d(Q[0]),
        .q(qm1),
        .clk(clk),
        .clr(clrff)
    );

    // M register
    PIPO MR(
        .data_out(M),
        .data_in(data_in),
        .clk(clk),
        .load(ldm)
    );

    // ALU
    ALU AS(
        .out(Z),
        .in1(A),
        .in2(M),
        .addsub(addsub)
    );

    // Counter
    counter CN(
        .data_out(count),
        .decr(decr),
        .ldcnt(ldcnt),
        .clk(clk)
    );

endmodule


// Shift register (Parallel load, shift right)
module shift_reg(
    output reg [15:0] data_out,
    input [15:0] data_in,
    input s_in, clk, ld, clr, sft
);
    always @(posedge clk) begin
        if (clr) 
            data_out <= 16'b0;
        else if (ld) 
            data_out <= data_in;
        else if (sft) 
            data_out <= {s_in, data_out[15:1]};
    end
endmodule


// Parallel In Parallel Out register
module PIPO(
    output reg [15:0] data_out,
    input [15:0] data_in,
    input clk, load
);
    always @(posedge clk)
        if (load) 
            data_out <= data_in;
endmodule


// D Flip-Flop
module dff(
    input d, clk, clr,
    output reg q
);
    always @(posedge clk)
        if (clr) 
            q <= 1'b0;
        else 
            q <= d;
endmodule


// ALU for Booth's Algorithm
module ALU(
    output reg [15:0] out,
    input [15:0] in1, in2,
    input addsub
);
    always @(*) begin
        if (addsub == 1'b0) 
            out = in1 - in2;  // subtract
        else 
            out = in1 + in2;  // add
    end
endmodule


// 5-bit counter
module counter(
    output reg [4:0] data_out,
    input decr, ldcnt, clk
);
    always @(posedge clk) begin
        if (ldcnt) 
            data_out <= 5'b10000; // load 16
        else if (decr) 
            data_out <= data_out - 1;
    end
endmodule
