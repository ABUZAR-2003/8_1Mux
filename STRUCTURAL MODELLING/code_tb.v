module tb_mux8to13;
    // Inputs
    reg [7:0] D;
    reg [2:0] S;
    wire Y;
    // Instantiate the mux8to1 module
    mux8to13 uut (
        .D(D),
        .S(S),
        .Y(Y)   );
    initial begin
        // Initialize inputs
        D = 8’b00000000;
        S = 3’b000;
        // Wait for the global reset to finish
        #100;
        // Apply test cases
        // Test Case 1: Select input 0
        D = 8’b10101010;
        S = 3’b000;
        #10;
        $display(“Test Case 1: S = %b, Y = %b (Expected: %b)”, S, Y, D[0]);
        // Test Case 2: Select input 1
        S = 3’b001;
        #10;
        $display(“Test Case 2: S = %b, Y = %b (Expected: %b)”, S, Y, D[1]);
        // Test Case 3: Select input 2
        S = 3’b010;
        #10;
        $display(“Test Case 3: S = %b, Y = %b (Expected: %b)”, S, Y, D[2]);
        // Test Case 4: Select input 3
        S = 3’b011;
        #10;
        $display(“Test Case 4: S = %b, Y = %b (Expected: %b)”, S, Y, D[3]);
        // Test Case 5: Select input 4
        S = 3’b100;
        #10;
        $display(“Test Case 5: S = %b, Y = %b (Expected: %b)”, S, Y, D[4]);
        // Test Case 6: Select input 5
        S = 3’b101;
        #10;
        $display(“Test Case 6: S = %b, Y = %b (Expected: %b)”, S, Y, D[5]);
        // Test Case 7: Select input 6
        S = 3’b110;
        #10;
        $display(“Test Case 7: S = %b, Y = %b (Expected: %b)”, S, Y, D[6]);
        // Test Case 8: Select input 7
        S = 3’b111;
        #10;
        $display(“Test Case 8: S = %b, Y = %b (Expected: %b)”, S, Y, D[7]);
        // Test Case 9: Change data inputs and check select again
        D = 8’b11001100;
        S = 3’b000;
        #10;
        $display(“Test Case 9: S = %b, Y = %b (Expected: %b)”, S, Y, D[0]);
        S = 3’b111;
        #10;
        $display(“Test Case 10: S = %b, Y = %b (Expected: %b)”, S, Y, D[7]);
        $finish;
    end
endmodule
