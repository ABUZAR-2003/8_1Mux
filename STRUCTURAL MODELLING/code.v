module mux2to1 (
    input A, B,  // 2 data inputs
    input S,    // 1 select input
    output Y    // 1 output
);
    assign Y = S ? B : A;
endmodule
module mux4to1 (
    input [3:0] D,  // 4 data inputs
    input [1:0] S,  // 2 select inputs
    output Y       // 1 output
);
    wire Y0, Y1;
    mux2to1 mux0 (.A(D[0]), .B(D[1]), .S(S[0]), .Y(Y0));
    mux2to1 mux1 (.A(D[2]), .B(D[3]), .S(S[0]), .Y(Y1));
    mux2to1 mux2 (.A(Y0), .B(Y1), .S(S[1]), .Y(Y));
endmodule
module mux8to13 (
    input [7:0] D,  // 8 data inputs
    input [2:0] S,  // 3 select inputs
    output Y       // 1 output
);
    wire Y0, Y1;

    mux4to1 mux0 (.D(D[3:0]), .S(S[1:0]), .Y(Y0));
    mux4to1 mux1 (.D(D[7:4]), .S(S[1:0]), .Y(Y1));
    mux2to1 mux2 (.A(Y0), .B(Y1), .S(S[2]), .Y(Y));
endmodule
