`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 06:29:23 PM
// Design Name: 
// Module Name: mac_unit
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


module mac_unit(
    input clk,
    input rst,
    input [7:0] ain, //operand
    input [7:0] win, //operand
    output [7:0] aout,
    output [7:0] wout,
    output [21:0] sout
    );
    
    wire [15:0] product;
    wire [21:0] sum;
     
    //operand register    
    register a_reg(.clk(clk), .rst(rst), .data_in(ain), .data_out(aout)); // a out for the next mac unit in the array
    register w_reg(.clk(clk), .rst(rst), .data_in(win), .data_out(wout)); // w out for the next mac unit in the array 
    
    multiplier multiplier(.operand1(aout), .operand2(wout), .product(product));
    assign sum = sout + product;
    
    //accumulator register
    register #(.WORD_SIZE(22)) accumulator_reg (.clk(clk), .rst(rst), .data_in(sum), .data_out(sout));
     
endmodule