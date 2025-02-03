module mux8to11 (
    input [7:0] D,  // 8 data inputs
    input [2:0] S,  // 3 select inputs
    output Y       // 1 output
);
    wire [7:0] and_out;
    wire [2:0] not_s;

    // NOT gates for select lines
    not (not_s[0], S[0]);
    not (not_s[1], S[1]);
    not (not_s[2], S[2]);

    // AND gates for each data input
    and (and_out[0], D[0], not_s[2], not_s[1], not_s[0]);
    and (and_out[1], D[1], not_s[2], not_s[1], S[0]);
    and (and_out[2], D[2], not_s[2], S[1], not_s[0]);
    and (and_out[3], D[3], not_s[2], S[1], S[0]);
    and (and_out[4], D[4], S[2], not_s[1], not_s[0]);
    and (and_out[5], D[5], S[2], not_s[1], S[0]);
    and (and_out[6], D[6], S[2], S[1], not_s[0]);
    and (and_out[7], D[7], S[2], S[1], S[0]);

    // OR gate to combine all AND gate outputs
    or (Y, and_out[0], and_out[1], and_out[2], and_out[3], and_out[4], and_out[5], and_out[6], and_out[7]);
endmodule
