`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 10:01:47 PM
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
    output [16:0] sout
    );
    
    wire [15:0] product;
    wire [16:0] sum;
    
    function [15:0] p ;  
        input [7:0] operand1, operand2;
        begin
            p = operand1 * operand2;
        end
    endfunction 
    
    //operand register    
    register a_reg(.clk(clk), .rst(rst), .data_in(ain), .data_out(aout)); // a out for the next mac unit in the array
    register w_reg(.clk(clk), .rst(rst), .data_in(win), .data_out(wout)); // w out for the next mac unit in the array 
    
    assign product = p(.operand1(aout), .operand2(wout));
    assign sum = sout + product;
    
    //accumulator register
    register #(.WORD_SIZE(17)) accumulator_reg (.clk(clk), .rst(rst), .data_in(sum), .data_out(sout));
     
endmodule

  
  

