`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2022 07:00:36 AM
// Design Name: 
// Module Name: mac_array_2x2_2
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


module mac_array_2x2_2(
    input clk,
    input rst,
    input [7:0] ain[1:0],
    input [7:0] win[1:0],
    output [21:0] sout[1:0][1:0]
    );
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout21, mac_aout22; 
    wire [7:0] mac_wout11, mac_wout12, mac_wout21, mac_wout22;
   
   mac_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain[0]), .win(win[0]), .aout(mac_aout11), .wout(mac_wout11), .sout(sout[0][0]));
   mac_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win[1]), .aout(mac_aout12), .wout(mac_wout12), .sout(sout[0][1]));
   mac_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain[1]), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout[1][0]));
   mac_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout[1][1]));
    
endmodule
