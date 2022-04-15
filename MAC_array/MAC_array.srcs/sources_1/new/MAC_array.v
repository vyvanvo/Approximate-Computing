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

`include "MAC_unit.v"

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
