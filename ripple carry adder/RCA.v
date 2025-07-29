



module RCA #(parameter N=8)(
    input  [N-1:0] a, b,
    input          cin,
    output         cout,
    output [N-1:0] sum
);

    wire [N:0] carry;
    assign carry[0] = cin;
    assign cout = carry[N];

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : fa_loop
            fulladder fa(
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

endmodule
