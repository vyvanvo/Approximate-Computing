`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 01:22:05 AM
// Design Name: 
// Module Name: MAC_unit
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

module register (clk, rst, write_en, data_in, data_out
    );
    
    parameter WORD_SIZE = 8;
    input clk;
    input rst;
    input write_en;
    input [WORD_SIZE-1:0] data_in;
    output reg [WORD_SIZE-1:0] data_out;
    
    always @(posedge rst or posedge clk) begin
        if (rst) begin
            data_out <= {WORD_SIZE{1'b0} };
        end else if (clk) begin
        
            if (write_en) begin
                data_out <= data_in;
            end
            
        end
    
    end
    
endmodule

module MAC_unit(
    input clk,
    input rst,
    input [7:0] ain, //operand
    input [7:0] win, //operand
    output [7:0] aout,
    output [7:0] wout,
    output [16:0] sout
    );
    
    wire [15:0] product;
    wire [16:0] sum;
    
    //operand register
    register a_reg(.clk(clk), .rst(rst), .write_en(clk), .data_in(ain), .data_out(aout)); // a out for the next mac unit in the array
    register w_reg(.clk(clk), .rst(rst), .write_en(clk), .data_in(win), .data_out(wout)); // w out for the next mac unit in the array 
    
    assign product = aout * wout;
    assign sum = sout + product;
    
    //accumulator register
    register #(.WORD_SIZE(17)) accumulator_reg (.clk(clk), .rst(rst), .write_en(clk), .data_in(sum), .data_out(sout));
     
endmodule

  