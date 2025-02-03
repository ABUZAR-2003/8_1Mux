module tb_mux8to11;
    reg [7:0] D;  // 8 data inputs
    reg [2:0] S;  // 3 select inputs
    wire Y;       // 1 output

    // Instantiate the multiplexer
    mux8to11 uut (
        .D(D),
        .S(S),
        .Y(Y)
    );
    initial begin
        // Initialize inputs
        D = 8’b10101010;
        S = 3’b000;
        // Apply test vectors
        #10 S = 3’b001;
        #10 S = 3’b010;
        #10 S = 3’b011;
        #10 S = 3’b100;
        #10 S = 3’b101;
        #10 S = 3’b110;
        #10 S = 3’b111;

        // Finish simulation
        #10 $finish;
    end
    initial begin
        $monitor(“At time %t, S = %b, Y = %b”, $time, S, Y);
    end
endmodule
