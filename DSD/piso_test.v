`timescale 1ns / 1ps
module piso_test;

    // Inputs
    reg clk;
    reg reset;
    reg [7:0] parallel_in;
    reg load;

    // Outputs
    wire serial_out;

    // Instantiate the Unit Under Test (UUT)
    piso uut (
        .clk(clk), 
        .reset(reset), 
        .parallel_in(parallel_in), 
        .load(load), 
        .serial_out(serial_out)
    );

    // Clock generation
    always #5 clk = ~clk; // 10ns clock period

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 0;
        parallel_in = 8'b00000000;
        load = 0;

        // Apply reset
        #10 reset = 1; // Activate reset
        #10 reset = 0; // Deactivate reset

        // Test Case 1: Load and serialize data
        parallel_in = 8'b10101010; // Input data
        #10 load = 1; // Load the data
        #10 load = 0; // Start serialization
        #100; // Wait for all bits to shift out

        // Test Case 2: Load a different value
        parallel_in = 8'b11001100;
        #10 load = 1; // Load new data
        #10 load = 0; // Start serialization
        #100; // Wait for all bits to shift out

        // Test Case 3: Reset during operation
        parallel_in = 8'b11110000;
        #10 load = 1;
        #10 load = 0;
        #30 reset = 1; // Reset during shifting
        #10 reset = 0; // Resume operation

        // End of simulation
        #50 $stop;
    end

endmodule
