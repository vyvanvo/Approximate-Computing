`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 08:16:21 PM
// Design Name: 
// Module Name: mac_array_8x8
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


module mac_array_8x8(
    clk, rst,
    ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
    win1, win2, win3, win4, win5, win6, win7, win8,
    sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
    sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
    sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
    sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
    sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
    sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
    sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
    sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88 
    ); //8x8 MAC array
    
    input clk, rst;
    input [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8;
    input [7:0] win1, win2, win3, win4, win5, win6, win7, win8;
    output [16:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18;
    output [16:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28;
    output [16:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38;
    output [16:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48;
    output [16:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58;
    output [16:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68;
    output [16:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78;
    output [16:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88;
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout13, mac_aout14, mac_aout15, mac_aout16, mac_aout17, mac_aout18;
    wire [7:0] mac_aout21, mac_aout22, mac_aout23, mac_aout24, mac_aout25, mac_aout26, mac_aout27, mac_aout28; 
    wire [7:0] mac_aout31, mac_aout32, mac_aout33, mac_aout34, mac_aout35, mac_aout36, mac_aout37, mac_aout38;
    wire [7:0] mac_aout41, mac_aout42, mac_aout43, mac_aout44, mac_aout45, mac_aout46, mac_aout47, mac_aout48; 
    wire [7:0] mac_aout51, mac_aout52, mac_aout53, mac_aout54, mac_aout55, mac_aout56, mac_aout57, mac_aout58;
    wire [7:0] mac_aout61, mac_aout62, mac_aout63, mac_aout64, mac_aout65, mac_aout66, mac_aout67, mac_aout68; 
    wire [7:0] mac_aout71, mac_aout72, mac_aout73, mac_aout74, mac_aout75, mac_aout76, mac_aout77, mac_aout78;
    wire [7:0] mac_aout81, mac_aout82, mac_aout83, mac_aout84, mac_aout85, mac_aout86, mac_aout87, mac_aout88; 
    
    wire [7:0] mac_wout11, mac_wout12, mac_wout13, mac_wout14, mac_wout15, mac_wout16, mac_wout17, mac_wout18;
    wire [7:0] mac_wout21, mac_wout22, mac_wout23, mac_wout24, mac_wout25, mac_wout26, mac_wout27, mac_wout28;
    wire [7:0] mac_wout31, mac_wout32, mac_wout33, mac_wout34, mac_wout35, mac_wout36, mac_wout37, mac_wout38;
    wire [7:0] mac_wout41, mac_wout42, mac_wout43, mac_wout44, mac_wout45, mac_wout46, mac_wout47, mac_wout48;
    wire [7:0] mac_wout51, mac_wout52, mac_wout53, mac_wout54, mac_wout55, mac_wout56, mac_wout57, mac_wout58;
    wire [7:0] mac_wout61, mac_wout62, mac_wout63, mac_wout64, mac_wout65, mac_wout66, mac_wout67, mac_wout68;
    wire [7:0] mac_wout71, mac_wout72, mac_wout73, mac_wout74, mac_wout75, mac_wout76, mac_wout77, mac_wout78;
    wire [7:0] mac_wout81, mac_wout82, mac_wout83, mac_wout84, mac_wout85, mac_wout86, mac_wout87, mac_wout88;
   
    //row 1
    mac_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain1), .win(win1), .aout(mac_aout11), .wout(mac_wout11), .sout(sout11));
    mac_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win2), .aout(mac_aout12), .wout(mac_wout12), .sout(sout12));
    mac_unit mac_unit13 (.clk(clk), .rst(rst), .ain(mac_aout12), .win(win3), .aout(mac_aout13), .wout(mac_wout13), .sout(sout13));
    mac_unit mac_unit14 (.clk(clk), .rst(rst), .ain(mac_aout13), .win(win4), .aout(mac_aout14), .wout(mac_wout14), .sout(sout14));
    mac_unit mac_unit15 (.clk(clk), .rst(rst), .ain(mac_aout14), .win(win5), .aout(mac_aout15), .wout(mac_wout15), .sout(sout15));
    mac_unit mac_unit16 (.clk(clk), .rst(rst), .ain(mac_aout15), .win(win6), .aout(mac_aout16), .wout(mac_wout16), .sout(sout16));
    mac_unit mac_unit17 (.clk(clk), .rst(rst), .ain(mac_aout16), .win(win7), .aout(mac_aout17), .wout(mac_wout17), .sout(sout17));
    mac_unit mac_unit18 (.clk(clk), .rst(rst), .ain(mac_aout17), .win(win8), .aout(mac_aout18), .wout(mac_wout18), .sout(sout18));
   
    //row 2
    mac_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain2), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout21));
    mac_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout22));
    mac_unit mac_unit23 (.clk(clk), .rst(rst), .ain(mac_aout22), .win(mac_wout13), .aout(mac_aout23), .wout(mac_wout23), .sout(sout23));
    mac_unit mac_unit24 (.clk(clk), .rst(rst), .ain(mac_aout23), .win(mac_wout14), .aout(mac_aout24), .wout(mac_wout24), .sout(sout24));
    mac_unit mac_unit25 (.clk(clk), .rst(rst), .ain(mac_aout24), .win(mac_wout15), .aout(mac_aout25), .wout(mac_wout25), .sout(sout25));
    mac_unit mac_unit26 (.clk(clk), .rst(rst), .ain(mac_aout25), .win(mac_wout16), .aout(mac_aout26), .wout(mac_wout26), .sout(sout26));
    mac_unit mac_unit27 (.clk(clk), .rst(rst), .ain(mac_aout26), .win(mac_wout17), .aout(mac_aout27), .wout(mac_wout27), .sout(sout27));
    mac_unit mac_unit28 (.clk(clk), .rst(rst), .ain(mac_aout27), .win(mac_wout18), .aout(mac_aout28), .wout(mac_wout28), .sout(sout28));
    
    //row 3
    mac_unit mac_unit31 (.clk(clk), .rst(rst), .ain(ain3), .win(mac_wout21), .aout(mac_aout31), .wout(mac_wout31), .sout(sout31));
    mac_unit mac_unit32 (.clk(clk), .rst(rst), .ain(mac_aout31), .win(mac_wout22), .aout(mac_aout32), .wout(mac_wout32), .sout(sout32));
    mac_unit mac_unit33 (.clk(clk), .rst(rst), .ain(mac_aout32), .win(mac_wout23), .aout(mac_aout33), .wout(mac_wout33), .sout(sout33));
    mac_unit mac_unit34 (.clk(clk), .rst(rst), .ain(mac_aout33), .win(mac_wout24), .aout(mac_aout34), .wout(mac_wout34), .sout(sout34));
    mac_unit mac_unit35 (.clk(clk), .rst(rst), .ain(mac_aout34), .win(mac_wout25), .aout(mac_aout35), .wout(mac_wout35), .sout(sout35));
    mac_unit mac_unit36 (.clk(clk), .rst(rst), .ain(mac_aout35), .win(mac_wout26), .aout(mac_aout36), .wout(mac_wout36), .sout(sout36));
    mac_unit mac_unit37 (.clk(clk), .rst(rst), .ain(mac_aout36), .win(mac_wout27), .aout(mac_aout37), .wout(mac_wout37), .sout(sout37));
    mac_unit mac_unit38 (.clk(clk), .rst(rst), .ain(mac_aout37), .win(mac_wout28), .aout(mac_aout38), .wout(mac_wout38), .sout(sout38));
    
    //row 4
    mac_unit mac_unit41 (.clk(clk), .rst(rst), .ain(ain4), .win(mac_wout31), .aout(mac_aout41), .wout(mac_wout41), .sout(sout41));
    mac_unit mac_unit42 (.clk(clk), .rst(rst), .ain(mac_aout41), .win(mac_wout32), .aout(mac_aout42), .wout(mac_wout42), .sout(sout42));
    mac_unit mac_unit43 (.clk(clk), .rst(rst), .ain(mac_aout42), .win(mac_wout33), .aout(mac_aout43), .wout(mac_wout43), .sout(sout43));
    mac_unit mac_unit44 (.clk(clk), .rst(rst), .ain(mac_aout43), .win(mac_wout34), .aout(mac_aout44), .wout(mac_wout44), .sout(sout44));
    mac_unit mac_unit45 (.clk(clk), .rst(rst), .ain(mac_aout44), .win(mac_wout35), .aout(mac_aout45), .wout(mac_wout45), .sout(sout45));
    mac_unit mac_unit46 (.clk(clk), .rst(rst), .ain(mac_aout45), .win(mac_wout36), .aout(mac_aout46), .wout(mac_wout46), .sout(sout46));
    mac_unit mac_unit47 (.clk(clk), .rst(rst), .ain(mac_aout46), .win(mac_wout37), .aout(mac_aout47), .wout(mac_wout47), .sout(sout47));
    mac_unit mac_unit48 (.clk(clk), .rst(rst), .ain(mac_aout47), .win(mac_wout38), .aout(mac_aout48), .wout(mac_wout48), .sout(sout48));
    
    //row 5
    mac_unit mac_unit51 (.clk(clk), .rst(rst), .ain(ain5), .win(mac_wout41), .aout(mac_aout51), .wout(mac_wout51), .sout(sout51));
    mac_unit mac_unit52 (.clk(clk), .rst(rst), .ain(mac_aout51), .win(mac_wout42), .aout(mac_aout52), .wout(mac_wout52), .sout(sout52));
    mac_unit mac_unit53 (.clk(clk), .rst(rst), .ain(mac_aout52), .win(mac_wout43), .aout(mac_aout53), .wout(mac_wout53), .sout(sout53));
    mac_unit mac_unit54 (.clk(clk), .rst(rst), .ain(mac_aout53), .win(mac_wout44), .aout(mac_aout54), .wout(mac_wout54), .sout(sout54));
    mac_unit mac_unit55 (.clk(clk), .rst(rst), .ain(mac_aout54), .win(mac_wout45), .aout(mac_aout55), .wout(mac_wout55), .sout(sout55));
    mac_unit mac_unit56 (.clk(clk), .rst(rst), .ain(mac_aout55), .win(mac_wout46), .aout(mac_aout56), .wout(mac_wout56), .sout(sout56));
    mac_unit mac_unit57 (.clk(clk), .rst(rst), .ain(mac_aout56), .win(mac_wout47), .aout(mac_aout57), .wout(mac_wout57), .sout(sout57));
    mac_unit mac_unit58 (.clk(clk), .rst(rst), .ain(mac_aout57), .win(mac_wout48), .aout(mac_aout58), .wout(mac_wout58), .sout(sout58));
    
    //row 6
    mac_unit mac_unit61 (.clk(clk), .rst(rst), .ain(ain6), .win(mac_wout51), .aout(mac_aout61), .wout(mac_wout61), .sout(sout61));
    mac_unit mac_unit62 (.clk(clk), .rst(rst), .ain(mac_aout61), .win(mac_wout52), .aout(mac_aout62), .wout(mac_wout62), .sout(sout62));
    mac_unit mac_unit63 (.clk(clk), .rst(rst), .ain(mac_aout62), .win(mac_wout53), .aout(mac_aout63), .wout(mac_wout63), .sout(sout63));
    mac_unit mac_unit64 (.clk(clk), .rst(rst), .ain(mac_aout63), .win(mac_wout54), .aout(mac_aout64), .wout(mac_wout64), .sout(sout64));
    mac_unit mac_unit65 (.clk(clk), .rst(rst), .ain(mac_aout64), .win(mac_wout55), .aout(mac_aout65), .wout(mac_wout65), .sout(sout65));
    mac_unit mac_unit66 (.clk(clk), .rst(rst), .ain(mac_aout65), .win(mac_wout56), .aout(mac_aout66), .wout(mac_wout66), .sout(sout66));
    mac_unit mac_unit67 (.clk(clk), .rst(rst), .ain(mac_aout66), .win(mac_wout57), .aout(mac_aout67), .wout(mac_wout67), .sout(sout67));
    mac_unit mac_unit68 (.clk(clk), .rst(rst), .ain(mac_aout67), .win(mac_wout58), .aout(mac_aout68), .wout(mac_wout68), .sout(sout68));
    
    //row 7
    mac_unit mac_unit71 (.clk(clk), .rst(rst), .ain(ain7), .win(mac_wout61), .aout(mac_aout71), .wout(mac_wout71), .sout(sout71));
    mac_unit mac_unit72 (.clk(clk), .rst(rst), .ain(mac_aout71), .win(mac_wout62), .aout(mac_aout72), .wout(mac_wout72), .sout(sout72));
    mac_unit mac_unit73 (.clk(clk), .rst(rst), .ain(mac_aout72), .win(mac_wout63), .aout(mac_aout73), .wout(mac_wout73), .sout(sout73));
    mac_unit mac_unit74 (.clk(clk), .rst(rst), .ain(mac_aout73), .win(mac_wout64), .aout(mac_aout74), .wout(mac_wout74), .sout(sout74));
    mac_unit mac_unit75 (.clk(clk), .rst(rst), .ain(mac_aout74), .win(mac_wout65), .aout(mac_aout75), .wout(mac_wout75), .sout(sout75));
    mac_unit mac_unit76 (.clk(clk), .rst(rst), .ain(mac_aout75), .win(mac_wout66), .aout(mac_aout76), .wout(mac_wout76), .sout(sout76));
    mac_unit mac_unit77 (.clk(clk), .rst(rst), .ain(mac_aout76), .win(mac_wout67), .aout(mac_aout77), .wout(mac_wout77), .sout(sout77));
    mac_unit mac_unit78 (.clk(clk), .rst(rst), .ain(mac_aout77), .win(mac_wout68), .aout(mac_aout78), .wout(mac_wout78), .sout(sout78));
    
    //row 8
    mac_unit mac_unit81 (.clk(clk), .rst(rst), .ain(ain8), .win(mac_wout71), .aout(mac_aout81), .wout(mac_wout81), .sout(sout81));
    mac_unit mac_unit82 (.clk(clk), .rst(rst), .ain(mac_aout81), .win(mac_wout72), .aout(mac_aout82), .wout(mac_wout82), .sout(sout82));
    mac_unit mac_unit83 (.clk(clk), .rst(rst), .ain(mac_aout82), .win(mac_wout73), .aout(mac_aout83), .wout(mac_wout83), .sout(sout83));
    mac_unit mac_unit84 (.clk(clk), .rst(rst), .ain(mac_aout83), .win(mac_wout74), .aout(mac_aout84), .wout(mac_wout84), .sout(sout84));
    mac_unit mac_unit85 (.clk(clk), .rst(rst), .ain(mac_aout84), .win(mac_wout75), .aout(mac_aout85), .wout(mac_wout85), .sout(sout85));
    mac_unit mac_unit86 (.clk(clk), .rst(rst), .ain(mac_aout85), .win(mac_wout76), .aout(mac_aout86), .wout(mac_wout86), .sout(sout86));
    mac_unit mac_unit87 (.clk(clk), .rst(rst), .ain(mac_aout86), .win(mac_wout77), .aout(mac_aout87), .wout(mac_wout87), .sout(sout87));
    mac_unit mac_unit88 (.clk(clk), .rst(rst), .ain(mac_aout87), .win(mac_wout78), .aout(mac_aout88), .wout(mac_wout88), .sout(sout88));
    
endmodule


