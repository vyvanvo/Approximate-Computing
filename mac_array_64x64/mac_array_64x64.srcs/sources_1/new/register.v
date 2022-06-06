`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 06:29:40 PM
// Design Name: 
// Module Name: register
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


module register (clk, rst, data_in, data_out
    );
    
    parameter WORD_SIZE = 8;
    input clk;
    input rst;
    input [WORD_SIZE-1:0] data_in;
    output reg [WORD_SIZE-1:0] data_out;
    
    always @(posedge rst or posedge clk) begin
        if (rst) begin
            data_out <= {WORD_SIZE{1'b0} };
        end else begin
            data_out <= data_in;          
        end
    
    end
    
endmodule

