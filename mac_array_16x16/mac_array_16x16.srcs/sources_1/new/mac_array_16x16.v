`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 08:36:38 PM
// Design Name: 
// Module Name: mac_array_16x16
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


module mac_array_16x16( clk, rst,
    ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
    ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16,
    
    win1, win2, win3, win4, win5, win6, win7, win8,
    win9, win10, win11, win12, win13, win14, win15, win16,
    
    sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
    sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
    
    sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
    sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
    
    sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
    sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
    
    sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
    sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
    
    sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
    sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
    
    sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
    sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
    
    sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
    sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
    
    sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
    sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
    
    sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
    sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
    
    sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
    sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
    
    sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
    sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
    
    sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
    sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
    
    sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
    sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
    
    sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
    sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
    
    sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
    sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
    
    sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
    sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,

    );
    
    input clk, rst;
    
    input [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
                ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16;
                
    input [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
                win9, win10, win11, win12, win13, win14, win15, win16;
    
    //row1    
    output [19:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                  sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16;
    
    //row2
    output [19:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                  sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16;
    
    //row3
    output [19:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                  sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16;
    
    //row4
    output [19:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                  sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16;
    
    //row5
    output [19:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                  sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16;
    
    //row6
    output [19:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                  sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16;
    
    //row7
    output [19:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                  sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16;
    
    //row8
    output [19:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                  sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16;
    
    //row9
    output [19:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                  sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16;
    
    //row10
    output [19:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                  sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16;
    
    //row11
    output [19:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                  sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16;
    
    //row12
    output [19:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                  sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16;
    
    //row13
    output [19:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                 sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16;
    
    //row14
    output [19:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                  sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16;
    
    //row15
    output [19:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                  sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16;
    
    //row16
    output [19:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                  sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16;
    
    
    //4 4x4 by 4 4x4
    //row1
    //mac_array_4x4_11
    wire [7:0] aout14, aout24, aout34, aout44,
               wout41, wout42, wout43, wout44;
                
    //mac_array_4x4_12
    wire [7:0] aout18, aout28, aout38, aout48,
               wout45, wout46, wout47, wout48;
                       
    //mac_array_4x4_13
    wire [7:0] aout1_12, aout2_12, aout3_12, aout4_12,
               wout49, wout4_10, wout4_11, wout4_12;
                
    //mac_array_4x4_14
    wire [7:0] aout1_16, aout2_16, aout3_16, aout4_16,
               wout4_13, wout4_14, wout4_15, wout4_16;
        
               
    //row2
    //mac_array_4x4_21
    wire [7:0] aout54, aout64, aout74, aout84,
               wout81, wout82, wout83, wout84;
                
    //mac_array_4x4_22
    wire [7:0] aout58, aout68, aout78, aout88,
               wout85, wout86, wout87, wout88;
                
    //mac_array_4x4_23
    wire [7:0] aout5_12, aout6_12, aout7_12, aout8_12,
               wout89, wout8_10, wout8_11, wout8_12;
                
    //mac_array_4x4_24
    wire [7:0] aout5_16, aout6_16, aout7_16, aout8_16,
               wout8_13, wout8_14, wout8_15, wout8_16;
               
      
    //row3
    //mac_array_4x4_31
    wire [7:0] aout94, aout10_4, aout11_4, aout12_4,
               wout12_1, wout12_2, wout12_3, wout12_4;
                
    //mac_array_4x4_32
    wire [7:0] aout98, aout10_8, aout11_8, aout12_8,
               wout12_5, wout12_6, wout12_7, wout12_8;
                
    //mac_array_4x4_33
    wire [7:0] aout9_12, aout10_12, aout11_12, aout12_12,
               wout12_9, wout12_10, wout12_11, wout12_12;
                
    //mac_array_4x4_34
    wire [7:0] aout9_16, aout10_16, aout11_16, aout12_16,
               wout12_13, wout12_14, wout12_15, wout12_16;
               
    
    //row4
    //mac_array_4x4_41
    wire [7:0] aout13_4, aout14_4, aout15_4, aout16_4,
               wout16_1, wout16_2, wout16_3, wout16_4;
                
    //mac_array_4x4_42
    wire [7:0] aout13_8, aout14_8, aout15_8, aout16_8,
               wout16_5, wout16_6, wout16_7, wout16_8;
                
    //mac_array_4x4_43
    wire [7:0] aout13_12, aout14_12, aout15_12, aout16_12,
               wout16_9, wout16_10, wout16_11, wout16_12;
                
    //mac_array_4x4_44
    wire [7:0] aout13_16, aout14_16, aout15_16, aout16_16,
               wout16_13, wout16_14, wout16_15, wout16_16;
               
    
    //row1
    mac_array_4x4 mac_array_4x4_11 (.clk(clk), .rst(rst),
                    .ain1(ain1), .ain2(ain2), .ain3(ain3), .ain4(ain4),
                    .win1(win1), .win2(win2), .win3(win3), .win4(win4),
                    .aout1(aout14), .aout2(aout24), .aout3(aout34), .aout4(aout44),
                    .wout1(wout41), .wout2(wout42), .wout3(wout43), .wout4(wout44),
                    .sout11(sout11), .sout12(sout12), .sout13(sout13), .sout14(sout14),
                    .sout21(sout21), .sout22(sout22), .sout23(sout23), .sout24(sout24),
                    .sout31(sout31), .sout32(sout32), .sout33(sout33), .sout34(sout34),
                    .sout41(sout41), .sout42(sout42), .sout43(sout43), .sout44(sout44)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_12 (.clk(clk), .rst(rst),
                    .ain1(aout14), .ain2(aout24), .ain3(aout34), .ain4(aout44),
                    .win1(win5), .win2(win6), .win3(win7), .win4(win8),
                    .aout1(aout18), .aout2(aout28), .aout3(aout38), .aout4(aout48),
                    .wout1(wout45), .wout2(wout46), .wout3(wout47), .wout4(wout48),
                    .sout11(sout15), .sout12(sout16), .sout13(sout17), .sout14(sout18),
                    .sout21(sout25), .sout22(sout26), .sout23(sout27), .sout24(sout28),
                    .sout31(sout35), .sout32(sout36), .sout33(sout37), .sout34(sout38),
                    .sout41(sout45), .sout42(sout46), .sout43(sout47), .sout44(sout48)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_13 (.clk(clk), .rst(rst),
                    .ain1(aout18), .ain2(aout28), .ain3(aout38), .ain4(aout48),
                    .win1(win9), .win2(win10), .win3(win11), .win4(win12),
                    .aout1(aout1_12), .aout2(aout2_12), .aout3(aout3_12), .aout4(aout4_12),
                    .wout1(wout49), .wout2(wout4_10), .wout3(wout4_11), .wout4(wout4_12),
                    .sout11(sout19), .sout12(sout1_10), .sout13(sout1_11), .sout14(sout1_12),
                    .sout21(sout29), .sout22(sout2_10), .sout23(sout2_11), .sout24(sout2_12),
                    .sout31(sout39), .sout32(sout3_10), .sout33(sout3_11), .sout34(sout3_12),
                    .sout41(sout49), .sout42(sout4_10), .sout43(sout4_11), .sout44(sout4_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_14 (.clk(clk), .rst(rst),
                    .ain1(aout1_12), .ain2(aout2_12), .ain3(aout3_12), .ain4(aout4_12),
                    .win1(win13), .win2(win14), .win3(win15), .win4(win16),
                    .aout1(aout1_16), .aout2(aout2_16), .aout3(aout3_16), .aout4(aout4_16),
                    .wout1(wout4_13), .wout2(wout4_14), .wout3(wout4_15), .wout4(wout4_16),
                    .sout11(sout1_13), .sout12(sout1_14), .sout13(sout1_15), .sout14(sout1_16),
                    .sout21(sout2_13), .sout22(sout2_14), .sout23(sout2_15), .sout24(sout2_16),
                    .sout31(sout3_13), .sout32(sout3_14), .sout33(sout3_15), .sout34(sout3_16),
                    .sout41(sout4_13), .sout42(sout4_14), .sout43(sout4_15), .sout44(sout4_16)
                    ); //4x4 MAC array
                    
                    
    //row2 
    mac_array_4x4 mac_array_4x4_21 (.clk(clk), .rst(rst),
                    .ain1(ain5), .ain2(ain6), .ain3(ain7), .ain4(ain8),
                    .win1(wout41), .win2(wout42), .win3(wout43), .win4(wout44),
                    .aout1(aout54), .aout2(aout64), .aout3(aout74), .aout4(aout84),
                    .wout1(wout81), .wout2(wout82), .wout3(wout83), .wout4(wout84),
                    .sout11(sout51), .sout12(sout52), .sout13(sout53), .sout14(sout54),
                    .sout21(sout61), .sout22(sout62), .sout23(sout63), .sout24(sout64),
                    .sout31(sout71), .sout32(sout72), .sout33(sout73), .sout34(sout74),
                    .sout41(sout81), .sout42(sout82), .sout43(sout83), .sout44(sout84)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_22 (.clk(clk), .rst(rst),
                    .ain1(aout54), .ain2(aout64), .ain3(aout74), .ain4(aout84),
                    .win1(wout45), .win2(wout46), .win3(wout47), .win4(wout48),
                    .aout1(aout58), .aout2(aout68), .aout3(aout78), .aout4(aout88),
                    .wout1(wout85), .wout2(wout86), .wout3(wout87), .wout4(wout88),
                    .sout11(sout55), .sout12(sout56), .sout13(sout57), .sout14(sout58),
                    .sout21(sout65), .sout22(sout66), .sout23(sout67), .sout24(sout68),
                    .sout31(sout75), .sout32(sout76), .sout33(sout77), .sout34(sout78),
                    .sout41(sout85), .sout42(sout86), .sout43(sout87), .sout44(sout88)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_23 (.clk(clk), .rst(rst),
                    .ain1(aout58), .ain2(aout68), .ain3(aout78), .ain4(aout88),
                    .win1(wout49), .win2(wout4_10), .win3(wout4_11), .win4(wout4_12),
                    .aout1(aout5_12), .aout2(aout6_12), .aout3(aout7_12), .aout4(aout8_12),
                    .wout1(wout89), .wout2(wout8_10), .wout3(wout8_11), .wout4(wout8_12),
                    .sout11(sout59), .sout12(sout5_10), .sout13(sout5_11), .sout14(sout5_12),
                    .sout21(sout69), .sout22(sout6_10), .sout23(sout6_11), .sout24(sout6_12),
                    .sout31(sout79), .sout32(sout7_10), .sout33(sout7_11), .sout34(sout7_12),
                    .sout41(sout89), .sout42(sout8_10), .sout43(sout8_11), .sout44(sout8_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_24 (.clk(clk), .rst(rst),
                    .ain1(aout5_12), .ain2(aout6_12), .ain3(aout7_12), .ain4(aout8_12),
                    .win1(wout4_13), .win2(wout4_14), .win3(wout4_15), .win4(wout4_16),
                    .aout1(aout5_16), .aout2(aout6_16), .aout3(aout7_16), .aout4(aout8_16),
                    .wout1(wout8_13), .wout2(wout8_14), .wout3(wout8_15), .wout4(wout8_16),
                    .sout11(sout5_13), .sout12(sout5_14), .sout13(sout5_15), .sout14(sout5_16),
                    .sout21(sout6_13), .sout22(sout6_14), .sout23(sout6_15), .sout24(sout6_16),
                    .sout31(sout7_13), .sout32(sout7_14), .sout33(sout7_15), .sout34(sout7_16),
                    .sout41(sout8_13), .sout42(sout8_14), .sout43(sout8_15), .sout44(sout8_16)
                    ); //4x4 MAC array
                    
    //row 3
    mac_array_4x4 mac_array_4x4_31 (.clk(clk), .rst(rst),
                    .ain1(ain9), .ain2(ain10), .ain3(ain11), .ain4(ain12),
                    .win1(wout81), .win2(wout82), .win3(wout83), .win4(wout84),
                    .aout1(aout94), .aout2(aout10_4), .aout3(aout11_4), .aout4(aout12_4),
                    .wout1(wout12_1), .wout2(wout12_2), .wout3(wout12_3), .wout4(wout12_4),
                    .sout11(sout91), .sout12(sout92), .sout13(sout93), .sout14(sout94),
                    .sout21(sout10_1), .sout22(sout10_2), .sout23(sout10_3), .sout24(sout10_4),
                    .sout31(sout11_1), .sout32(sout11_2), .sout33(sout11_3), .sout34(sout11_4),
                    .sout41(sout12_1), .sout42(sout12_2), .sout43(sout12_3), .sout44(sout12_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_32 (.clk(clk), .rst(rst),
                    .ain1(aout94), .ain2(aout10_4), .ain3(aout11_4), .ain4(aout12_4),
                    .win1(wout85), .win2(wout86), .win3(wout87), .win4(wout88),
                    .aout1(aout98), .aout2(aout10_8), .aout3(aout11_8), .aout4(aout12_8),
                    .wout1(wout12_5), .wout2(wout12_6), .wout3(wout12_7), .wout4(wout12_8),
                    .sout11(sout95), .sout12(sout96), .sout13(sout97), .sout14(sout98),
                    .sout21(sout10_5), .sout22(sout10_6), .sout23(sout10_7), .sout24(sout10_8),
                    .sout31(sout11_5), .sout32(sout11_6), .sout33(sout11_7), .sout34(sout11_8),
                    .sout41(sout12_5), .sout42(sout12_6), .sout43(sout12_7), .sout44(sout12_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_33 (.clk(clk), .rst(rst),
                    .ain1(aout98), .ain2(aout10_8), .ain3(aout11_8), .ain4(aout12_8),
                    .win1(wout89), .win2(wout8_10), .win3(wout8_11), .win4(wout8_12),
                    .aout1(aout9_12), .aout2(aout10_12), .aout3(aout11_12), .aout4(aout12_12),
                    .wout1(wout12_9), .wout2(wout12_10), .wout3(wout12_11), .wout4(wout12_12),
                    .sout11(sout99), .sout12(sout9_10), .sout13(sout9_11), .sout14(sout9_12),
                    .sout21(sout10_9), .sout22(sout10_10), .sout23(sout10_11), .sout24(sout10_12),
                    .sout31(sout11_9), .sout32(sout11_10), .sout33(sout11_11), .sout34(sout11_12),
                    .sout41(sout12_9), .sout42(sout12_10), .sout43(sout12_11), .sout44(sout12_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_34 (.clk(clk), .rst(rst),
                    .ain1(aout9_12), .ain2(aout10_12), .ain3(aout11_12), .ain4(aout12_12),
                    .win1(wout8_13), .win2(wout8_14), .win3(wout8_15), .win4(wout8_16),
                    .aout1(aout9_16), .aout2(aout10_16), .aout3(aout11_16), .aout4(aout12_16),
                    .wout1(wout12_13), .wout2(wout12_14), .wout3(wout12_15), .wout4(wout12_16),
                    .sout11(sout9_13), .sout12(sout9_14), .sout13(sout9_15), .sout14(sout9_16),
                    .sout21(sout10_13), .sout22(sout10_14), .sout23(sout10_15), .sout24(sout10_16),
                    .sout31(sout11_13), .sout32(sout11_14), .sout33(sout11_15), .sout34(sout11_16),
                    .sout41(sout12_13), .sout42(sout12_14), .sout43(sout12_15), .sout44(sout12_16)
                    ); //4x4 MAC Array
                    
    
    //row4
    mac_array_4x4 mac_array_4x4_41 (.clk(clk), .rst(rst),
                    .ain1(ain13), .ain2(ain14), .ain3(ain15), .ain4(ain16),
                    .win1(wout12_1), .win2(wout12_2), .win3(wout12_3), .win4(wout12_4),
                    .aout1(aout13_4), .aout2(aout14_4), .aout3(aout15_4), .aout4(aout16_4),
                    .wout1(wout16_1), .wout2(wout16_2), .wout3(wout16_3), .wout4(wout16_4),
                    .sout11(sout13_1), .sout12(sout13_2), .sout13(sout13_3), .sout14(sout13_4),
                    .sout21(sout14_1), .sout22(sout14_2), .sout23(sout14_3), .sout24(sout14_4),
                    .sout31(sout15_1), .sout32(sout15_2), .sout33(sout15_3), .sout34(sout15_4),
                    .sout41(sout16_1), .sout42(sout16_2), .sout43(sout16_3), .sout44(sout16_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_42 (.clk(clk), .rst(rst),
                    .ain1(aout13_4), .ain2(aout14_4), .ain3(aout15_4), .ain4(aout16_4),
                    .win1(wout12_5), .win2(wout12_6), .win3(wout12_7), .win4(wout12_8),
                    .aout1(aout13_8), .aout2(aout14_8), .aout3(aout15_8), .aout4(aout16_8),
                    .wout1(wout16_5), .wout2(wout16_6), .wout3(wout16_7), .wout4(wout16_8),
                    .sout11(sout13_5), .sout12(sout13_6), .sout13(sout13_7), .sout14(sout13_8),
                    .sout21(sout14_5), .sout22(sout14_6), .sout23(sout14_7), .sout24(sout14_8),
                    .sout31(sout15_5), .sout32(sout15_6), .sout33(sout15_7), .sout34(sout15_8),
                    .sout41(sout16_5), .sout42(sout16_6), .sout43(sout16_7), .sout44(sout16_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_43 (.clk(clk), .rst(rst),
                    .ain1(aout13_8), .ain2(aout14_8), .ain3(aout15_8), .ain4(aout16_8),
                    .win1(wout12_9), .win2(wout12_10), .win3(wout12_11), .win4(wout12_12),
                    .aout1(aout13_12), .aout2(aout14_12), .aout3(aout15_12), .aout4(aout16_12),
                    .wout1(wout16_9), .wout2(wout16_10), .wout3(wout16_11), .wout4(wout16_12),
                    .sout11(sout13_9), .sout12(sout13_10), .sout13(sout13_11), .sout14(sout13_12),
                    .sout21(sout14_9), .sout22(sout14_10), .sout23(sout14_11), .sout24(sout14_12),
                    .sout31(sout15_9), .sout32(sout15_10), .sout33(sout15_11), .sout34(sout15_12),
                    .sout41(sout16_9), .sout42(sout16_10), .sout43(sout16_11), .sout44(sout16_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_44 (.clk(clk), .rst(rst),
                    .ain1(aout13_12), .ain2(aout14_12), .ain3(aout15_12), .ain4(aout16_12),
                    .win1(wout12_13), .win2(wout12_14), .win3(wout12_15), .win4(wout12_16),
                    .aout1(aout13_16), .aout2(aout14_16), .aout3(aout15_16), .aout4(aout16_16),
                    .wout1(wout16_13), .wout2(wout16_14), .wout3(wout16_15), .wout4(wout16_16),
                    .sout11(sout13_13), .sout12(sout13_14), .sout13(sout13_15), .sout14(sout13_16),
                    .sout21(sout14_13), .sout22(sout14_14), .sout23(sout14_15), .sout24(sout14_16),
                    .sout31(sout15_13), .sout32(sout15_14), .sout33(sout15_15), .sout34(sout15_16),
                    .sout41(sout16_13), .sout42(sout16_14), .sout43(sout16_15), .sout44(sout16_16)
                    ); //4x4 MAC array
                    
    
    
endmodule
