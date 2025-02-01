`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:39 12/19/2024 
// Design Name: 
// Module Name:    piso 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module piso (
    input wire clk,           // Clock signal
    input wire reset,         // Reset signal (active high)
    input wire [7:0] parallel_in, // 8-bit parallel input (FFT output)
    input wire load,          // Load signal to latch parallel data
    output reg serial_out     // Serial output
);
    reg [7:0] shift_reg;      // Shift register to hold parallel data
    reg [2:0] count;          // 3-bit counter for 8 cycles

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 8'b0;      // Clear shift register
            serial_out <= 1'b0;     // Reset serial output
            count <= 3'b0;          // Reset counter
        end else if (load) begin
            shift_reg <= parallel_in; // Load parallel data into shift register
            count <= 3'b0;            // Reset counter for shifting
        end else if (count < 8) begin
            serial_out <= shift_reg[7];   // Output the MSB first
            shift_reg <= {shift_reg[6:0], 1'b0}; // Shift left
            count <= count + 1;          // Increment counter
        end
    end
endmodule

