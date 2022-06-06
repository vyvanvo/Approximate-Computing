`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 11:24:54 PM
// Design Name: 
// Module Name: multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier(
    operand1, operand2, product
    );
    
    parameter WORD_SIZE = 8;
    input [WORD_SIZE-1:0] operand1, operand2;
    output [2*WORD_SIZE-1:0] product;
    
    assign product = operand1 * operand2;
    
endmodule