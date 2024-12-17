`timescale 1ns / 1ps

module alu #(
    parameter ALU_WIDTH = 16
) (
    input logic [ALU_WIDTH-1:0] a,      
    input logic [ALU_WIDTH-1:0] b,      
    input logic [1:0] op,             
    output logic [ALU_WIDTH-1:0] result // Result of the operation
);

    always_comb begin
        case (op)
            2'b00: result = a + b;      // Addition
            2'b01: result = a - b;      // Subtraction
            2'b10: result = a & b;      // Bitwise AND
            2'b11: result = a | b;      // Bitwise OR
            default: result = {ALU_WIDTH{1'b0}}; // Default: Set result to zero
        endcase
    end

endmodule
