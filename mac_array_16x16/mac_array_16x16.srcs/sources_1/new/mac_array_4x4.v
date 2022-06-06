`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 09:46:47 PM
// Design Name: 
// Module Name: mac_array_4x4
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


module mac_array_4x4(
    clk, rst,
    ain1, ain2, ain3, ain4,
    win1, win2, win3, win4,
    aout1, aout2, aout3, aout4,
    wout1, wout2, wout3, wout4,
    sout11, sout12, sout13, sout14,
    sout21, sout22, sout23, sout24,
    sout31, sout32, sout33, sout34,
    sout41, sout42, sout43, sout44
    ); //4x4 MAC array
    
    input  clk, rst;
    input [7:0] ain1, ain2, ain3, ain4;
    input [7:0] win1, win2, win3, win4;
    output [7:0] aout1, aout2, aout3, aout4;
    output [7:0] wout1, wout2, wout3, wout4;
    output [19:0] sout11, sout12, sout13, sout14;
    output [19:0] sout21, sout22, sout23, sout24;
    output [19:0] sout31, sout32, sout33, sout34;
    output [19:0] sout41, sout42, sout43, sout44;
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout13, mac_aout14;
    wire [7:0] mac_aout21, mac_aout22, mac_aout23, mac_aout24; 
    wire [7:0] mac_aout31, mac_aout32, mac_aout33, mac_aout34;
    wire [7:0] mac_aout41, mac_aout42, mac_aout43, mac_aout44; 
    
    wire [7:0] mac_wout11, mac_wout12, mac_wout13, mac_wout14;
    wire [7:0] mac_wout21, mac_wout22, mac_wout23, mac_wout24;
    wire [7:0] mac_wout31, mac_wout32, mac_wout33, mac_wout34;
    wire [7:0] mac_wout41, mac_wout42, mac_wout43, mac_wout44;
   
    //row 1
    mac_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain1), .win(win1), .aout(mac_aout11), .wout(mac_wout11), .sout(sout11));
    mac_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win2), .aout(mac_aout12), .wout(mac_wout12), .sout(sout12));
    mac_unit mac_unit13 (.clk(clk), .rst(rst), .ain(mac_aout12), .win(win3), .aout(mac_aout13), .wout(mac_wout13), .sout(sout13));
    mac_unit mac_unit14 (.clk(clk), .rst(rst), .ain(mac_aout13), .win(win4), .aout(mac_aout14), .wout(mac_wout14), .sout(sout14));
   
    //row 2
    mac_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain2), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout21));
    mac_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout22));
    mac_unit mac_unit23 (.clk(clk), .rst(rst), .ain(mac_aout22), .win(mac_wout13), .aout(mac_aout23), .wout(mac_wout23), .sout(sout23));
    mac_unit mac_unit24 (.clk(clk), .rst(rst), .ain(mac_aout23), .win(mac_wout14), .aout(mac_aout24), .wout(mac_wout24), .sout(sout24));
    
    //row 3
    mac_unit mac_unit31 (.clk(clk), .rst(rst), .ain(ain3), .win(mac_wout21), .aout(mac_aout31), .wout(mac_wout31), .sout(sout31));
    mac_unit mac_unit32 (.clk(clk), .rst(rst), .ain(mac_aout31), .win(mac_wout22), .aout(mac_aout32), .wout(mac_wout32), .sout(sout32));
    mac_unit mac_unit33 (.clk(clk), .rst(rst), .ain(mac_aout32), .win(mac_wout23), .aout(mac_aout33), .wout(mac_wout33), .sout(sout33));
    mac_unit mac_unit34 (.clk(clk), .rst(rst), .ain(mac_aout33), .win(mac_wout24), .aout(mac_aout34), .wout(mac_wout34), .sout(sout34));
    
    //row 4
    mac_unit mac_unit41 (.clk(clk), .rst(rst), .ain(ain4), .win(mac_wout31), .aout(mac_aout41), .wout(mac_wout41), .sout(sout41));
    mac_unit mac_unit42 (.clk(clk), .rst(rst), .ain(mac_aout41), .win(mac_wout32), .aout(mac_aout42), .wout(mac_wout42), .sout(sout42));
    mac_unit mac_unit43 (.clk(clk), .rst(rst), .ain(mac_aout42), .win(mac_wout33), .aout(mac_aout43), .wout(mac_wout43), .sout(sout43));
    mac_unit mac_unit44 (.clk(clk), .rst(rst), .ain(mac_aout43), .win(mac_wout34), .aout(mac_aout44), .wout(mac_wout44), .sout(sout44));
    
    assign aout1 = mac_aout14;
    assign aout2 = mac_aout24;
    assign aout3 = mac_aout34;
    assign aout4 = mac_aout44;
    
    assign wout1 = mac_wout41;
    assign wout2 = mac_wout42;
    assign wout3 = mac_wout43;
    assign wout4 = mac_wout44;
    
endmodule
