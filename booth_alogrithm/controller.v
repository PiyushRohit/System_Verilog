`timescale 1ns/1ps

module controller(
    output reg lda, clra, sfta, ldq, clrq, sftq, ldm, clrff, addsub, decr, ldcnt, done,
    input start, clk, qo, qm1, eqz
);

    reg [2:0] state;
    parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011,
              s4 = 3'b100, s5 = 3'b101, s6 = 3'b110;

    // Sequential state transitions
    always @(posedge clk) begin
        case(state)
            s0: if (start) state <= s1; else state <= s0;
            s1: state <= s2;
            s2: if ({qo, qm1} == 2'b01) state <= s3;
                else if ({qo, qm1} == 2'b10) state <= s4;
                else state <= s5;
            s3: state <= s5;
            s4: state <= s5;
            s5: if (({qo, qm1} == 2'b01) && !eqz) state <= s3;
                else if (({qo, qm1} == 2'b10) && !eqz) state <= s4;
                else if (eqz) state <= s6;
                else state <= s5;
            s6: state <= s6;
            default: state <= s0;
        endcase
    end

    // Initialize state
    initial begin
        state = s0;
    end

    // Output logic (Moore type)
    always @(*) begin
        // Default values
        lda=0; clra=0; sfta=0; ldq=0; clrq=0; sftq=0; ldm=0;
        clrff=0; addsub=0; decr=0; ldcnt=0; done=0;

        case(state)
            s0: begin
                // idle
            end
            s1: begin
                clra=1; clrff=1; ldcnt=1; ldm=1;
            end
            s2: begin
                ldq=1;
            end
            s3: begin
                lda=1; addsub=1; // add M
            end
            s4: begin
                lda=1; addsub=0; // subtract M
            end
            s5: begin
                sfta=1; sftq=1; decr=1; // shift and decrement counter
            end
            s6: begin
                done=1; // finished
            end
        endcase
    end

endmodule
