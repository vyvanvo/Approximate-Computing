`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 11:45:14 PM
// Design Name: 
// Module Name: MAC_array
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


module MAC_array(
    input  clk,
    input rst,
    input [7:0] ain1,
    input [7:0] ain2,
    input [7:0] win1,
    input [7:0] win2,
    output [16:0] sout11,
    output [16:0] sout12,
    output [16:0] sout21,
    output [16:0] sout22
    );
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout21, mac_aout22; 
    wire [7:0] mac_wout11, mac_wout12, mac_wout21, mac_wout22;
   
   MAC_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain1), .win(win1), .aout(mac_aout11), .wout(mac_wout11), .sout(sout11));
   MAC_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win2), .aout(mac_aout12), .wout(mac_wout12), .sout(sout12));
   MAC_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain2), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout21));
   MAC_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout22));
    
endmodule
