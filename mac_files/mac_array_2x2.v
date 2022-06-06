`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 02:15:45 AM
// Design Name: 
// Module Name: mac_array_2x2
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


module mac_array_2x2(
    clk,rst,
    ain1,ain2,
    win1, win2,
    sout11,sout12,
    sout21,sout22
    ); //2x2 MAC array
    
    input  clk,rst;
    input [7:0] ain1,ain2;
    input [7:0] win1, win2;
    output [16:0] sout11, sout12,sout21,sout22;
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout21, mac_aout22; 
    wire [7:0] mac_wout11, mac_wout12, mac_wout21, mac_wout22;
   
   mac_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain1), .win(win1), .aout(mac_aout11), .wout(mac_wout11), .sout(sout11));
   mac_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win2), .aout(mac_aout12), .wout(mac_wout12), .sout(sout12));
   mac_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain2), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout21));
   mac_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout22));
    
endmodule