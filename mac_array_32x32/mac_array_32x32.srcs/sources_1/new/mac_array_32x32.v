`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 08:28:31 PM
// Design Name: 
// Module Name: mac_array_32x32
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


module mac_array_32x32(clk, rst,
    ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
    ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
    ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
    ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32,
    
    win1, win2, win3, win4, win5, win6, win7, win8,
    win9, win10, win11, win12, win13, win14, win15, win16, 
    win17, win18, win19, win20, win21, win22, win23, win24, 
    win25, win26, win27, win28, win29, win30, win31, win32, 

    sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
    sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
    sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
    sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
    
    sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
    sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
    sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
    sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
    
    sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
    sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
    sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
    sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
    
    sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
    sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
    sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
    sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
    
    sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
    sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
    sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
    sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
    
    sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
    sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
    sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
    sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
    
    sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
    sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
    sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
    sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
    
    sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
    sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
    sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
    sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
    
    sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
    sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
    sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
    sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
    
    sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
    sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
    sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
    sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
    
    sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
    sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
    sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
    sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
    
    sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
    sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
    sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
    sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
    
    sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
    sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
    sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
    sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
    
    sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
    sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
    sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
    sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
    
    sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
    sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
    sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
    sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
    
    sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
    sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
    sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
    sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
    
    sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
    sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
    sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
    sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
    
    sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
    sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
    sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
    sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
    
    sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
    sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
    sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
    sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
    
    sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
    sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
    sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
    sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
    
    sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
    sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
    sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
    sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
    
    sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
    sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
    sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
    sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
    
    sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
    sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
    sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
    sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
    
    sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
    sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
    sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
    sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
    
    sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
    sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
    sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
    sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
    
    sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
    sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
    sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
    sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
    
    sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
    sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
    sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
    sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
    
    sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
    sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
    sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
    sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
    
    sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
    sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
    sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
    sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
    
    sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
    sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
    sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
    sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
    
    sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
    sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
    sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
    sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
    
    sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
    sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
    sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
    sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32
 
    );
    
    input clk, rst;
    
    input [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
                ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
                ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
                ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32;
    
    input [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
                win9, win10, win11, win12, win13, win14, win15, win16, 
                win17, win18, win19, win20, win21, win22, win23, win24, 
                win25, win26, win27, win28, win29, win30, win31, win32;

    //row1
    output [20:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                  sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                  sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                  sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32;
    
    //row2
    output [20:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                  sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                  sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                  sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32;
    
    //row3
    output [20:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                  sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                  sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                  sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32;
    
    //row4
    output [20:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                  sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                  sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                  sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32;
    
    //row5
    output [20:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                  sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                  sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                  sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32;
    
    //row6
    output [20:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                  sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                  sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                  sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32;
    
    //row7
    output [20:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                  sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                  sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                  sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32;
    
    //row8
    output [20:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                  sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                  sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                  sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32;
    
    //row9
    output [20:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                  sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                  sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                  sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32;
    
    //row10
    output [20:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                  sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                  sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                  sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32;
    
    //row11
    output [20:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                  sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                  sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                  sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32;
    
    //row12
    output [20:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                  sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                  sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                  sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32;
    
    //row13
    output [20:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                  sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                  sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                  sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32;
    
    //row14
    output [20:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                  sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                  sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                  sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32;
    
    //row15
    output [20:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                  sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                  sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                  sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32;
    
    //row16
    output [20:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                  sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                  sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                  sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32;
    
    //row17
    output [20:0] sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                  sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                  sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                  sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32;
    
    //row18
    output [20:0] sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                  sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                  sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                  sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32;
    
    //row19
    output [20:0] sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                  sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                  sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                  sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32;
    
    //row20
    output [20:0] sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                  sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                  sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                  sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32;
    
    //row21
    output [20:0] sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                  sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                  sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                  sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32;
    
    //row22
    output [20:0] sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                  sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                  sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                  sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32;
    
    //row23
    output [20:0] sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                  sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                  sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                  sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32;
    
    
    //row24
    output [20:0] sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                  sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                  sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                  sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32;
    
    //row25
    output [20:0] sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                  sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                  sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                  sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32;
    
    //row26
    output [20:0] sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                  sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                  sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                  sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32;
    
    //row27
    output [20:0] sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                  sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                  sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                  sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32;
        
    //row28
    output [20:0] sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                  sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                  sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                  sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32;
    
    //row29
    output [20:0] sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                  sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                  sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                  sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32;
    
    //row23
    output [20:0] sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                  sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                  sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                  sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32;
    
    //row31
    output [20:0] sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                  sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                  sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                  sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32;
    
    //row32
    output [20:0] sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                  sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                  sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                  sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32;
    
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
                
    //mac_array_4x4_15
    wire [7:0] aout1_20, aout2_20, aout3_20, aout4_20,
               wout4_17, wout4_18, wout4_19, wout4_20;
                
    //mac_array_4x4_16
    wire [7:0] aout1_24, aout2_24, aout3_24, aout4_24,
               wout4_21, wout4_22, wout4_23, wout4_24;
                
    //mac_array_4x4_17
    wire [7:0] aout1_28, aout2_28, aout3_28, aout4_28,
               wout4_25, wout4_26, wout4_27, wout4_28;
                
    //mac_array_4x4_18
    wire [7:0] aout1_32, aout2_32, aout3_32, aout4_32,
               wout4_29, wout4_30, wout4_31, wout4_32;
                
                
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
                
    //mac_array_4x4_25
    wire [7:0] aout5_20, aout6_20, aout7_20, aout8_20,
               wout8_17, wout8_18, wout8_19, wout8_20;
                
    //mac_array_4x4_26
    wire [7:0] aout5_24, aout6_24, aout7_24, aout8_24,
               wout8_21, wout8_22, wout8_23, wout8_24;
                
    //mac_array_4x4_27
    wire [7:0] aout5_28, aout6_28, aout7_28, aout8_28,
               wout8_25, wout8_26, wout8_27, wout8_28;
                
    //mac_array_4x4_28
    wire [7:0] aout5_32, aout6_32, aout7_32, aout8_32,
               wout8_29, wout8_30, wout8_31, wout8_32;
               
    
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
                
    //mac_array_4x4_35
    wire [7:0] aout9_20, aout10_20, aout11_20, aout12_20,
               wout12_17, wout12_18, wout12_19, wout12_20;
                
    //mac_array_4x4_36
    wire [7:0] aout9_24, aout10_24, aout11_24, aout12_24,
               wout12_21, wout12_22, wout12_23, wout12_24;
                
    //mac_array_4x4_37
    wire [7:0] aout9_28, aout10_28, aout11_28, aout12_28,
               wout12_25, wout12_26, wout12_27, wout12_28;
                
    //mac_array_4x4_38
    wire [7:0] aout9_32, aout10_32, aout11_32, aout12_32,
               wout12_29, wout12_30, wout12_31, wout12_32;
               
    
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
                
    //mac_array_4x4_45
    wire [7:0] aout13_20, aout14_20, aout15_20, aout16_20,
               wout16_17, wout16_18, wout16_19, wout16_20;
                
    //mac_array_4x4_46
    wire [7:0] aout13_24, aout14_24, aout15_24, aout16_24,
               wout16_21, wout16_22, wout16_23, wout16_24;
                
    //mac_array_4x4_47
    wire [7:0] aout13_28, aout14_28, aout15_28, aout16_28,
               wout16_25, wout16_26, wout16_27, wout16_28;
                
    //mac_array_4x4_48
    wire [7:0] aout13_32, aout14_32, aout15_32, aout16_32,
               wout16_29, wout16_30, wout16_31, wout16_32;
               
 
    //row5
    //mac_array_4x4_51
    wire [7:0] aout17_4, aout18_4, aout19_4, aout20_4,
               wout20_1, wout20_2, wout20_3, wout20_4;
                
    //mac_array_4x4_52
    wire [7:0] aout17_8, aout18_8, aout19_8, aout20_8,
               wout20_5, wout20_6, wout20_7, wout20_8;
                
    //mac_array_4x4_53
    wire [7:0] aout17_12, aout18_12, aout19_12, aout20_12,
               wout20_9, wout20_10, wout20_11, wout20_12;
                
    //mac_array_4x4_54
    wire [7:0] aout17_16, aout18_16, aout19_16, aout20_16,
               wout20_13, wout20_14, wout20_15, wout20_16;
                
    //mac_array_4x4_55
    wire [7:0] aout17_20, aout18_20, aout19_20, aout20_20,
               wout20_17, wout20_18, wout20_19, wout20_20;
                
    //mac_array_4x4_56
    wire [7:0] aout17_24, aout18_24, aout19_24, aout20_24,
               wout20_21, wout20_22, wout20_23, wout20_24;
                
    //mac_array_4x4_57
    wire [7:0] aout17_28, aout18_28, aout19_28, aout20_28,
               wout20_25, wout20_26, wout20_27, wout20_28;
                
    //mac_array_4x4_58
    wire [7:0] aout17_32, aout18_32, aout19_32, aout20_32,
               wout20_29, wout20_30, wout20_31, wout20_32;
               

    //row6
    //mac_array_4x4_61
    wire [7:0] aout21_4, aout22_4, aout23_4, aout24_4,
               wout24_1, wout24_2, wout24_3, wout24_4;
                
    //mac_array_4x4_62
    wire [7:0] aout21_8, aout22_8, aout23_8, aout24_8,
               wout24_5, wout24_6, wout24_7, wout24_8;
               
    //mac_array_4x4_63
    wire [7:0] aout21_12, aout22_12, aout23_12, aout24_12,
               wout24_9, wout24_10, wout24_11, wout24_12;
                
    //mac_array_4x4_64
    wire [7:0] aout21_16, aout22_16, aout23_16, aout24_16,
               wout24_13, wout24_14, wout24_15, wout24_16;
                
    //mac_array_4x4_65
    wire [7:0] aout21_20, aout22_20, aout23_20, aout24_20,
               wout24_17, wout24_18, wout24_19, wout24_20;
                
    //mac_array_4x4_66
    wire [7:0] aout21_24, aout22_24, aout23_24, aout24_24,
               wout24_21, wout24_22, wout24_23, wout24_24;
                
    //mac_array_4x4_67
    wire [7:0] aout21_28, aout22_28, aout23_28, aout24_28,
               wout24_25, wout24_26, wout24_27, wout24_28;
                
    //mac_array_4x4_68
    wire [7:0] aout21_32, aout22_32, aout23_32, aout24_32,
               wout24_29, wout24_30, wout24_31, wout24_32;
               
   
    //row7
    //mac_array_4x4_71
    wire [7:0] aout25_4, aout26_4, aout27_4, aout28_4,
               wout28_1, wout28_2, wout28_3, wout28_4;
                
    //mac_array_4x4_72
    wire [7:0] aout25_8, aout26_8, aout27_8, aout28_8,
               wout28_5, wout28_6, wout28_7, wout28_8;
                
    //mac_array_4x4_73
    wire [7:0] aout25_12, aout26_12, aout27_12, aout28_12,
               wout28_9, wout28_10, wout28_11, wout28_12;
                
    //mac_array_4x4_74
    wire [7:0] aout25_16, aout26_16, aout27_16, aout28_16,
               wout28_13, wout28_14, wout28_15, wout28_16;
                
    //mac_array_4x4_75
    wire [7:0] aout25_20, aout26_20, aout27_20, aout28_20,
               wout28_17, wout28_18, wout28_19, wout28_20;
                
    //mac_array_4x4_76
    wire [7:0] aout25_24, aout26_24, aout27_24, aout28_24,
               wout28_21, wout28_22, wout28_23, wout28_24;
                
    //mac_array_4x4_77
    wire [7:0] aout25_28, aout26_28, aout27_28, aout28_28,
               wout28_25, wout28_26, wout28_27, wout28_28;
                
    //mac_array_4x4_78
    wire [7:0] aout25_32, aout26_32, aout27_32, aout28_32,
               wout28_29, wout28_30, wout28_31, wout28_32;
               
  
    //row8
    //mac_array_4x4_81
    wire [7:0] aout29_4, aout30_4, aout31_4, aout32_4,
               wout32_1, wout32_2, wout32_3, wout32_4;
                
    //mac_array_4x4_82
    wire [7:0] aout29_8, aout30_8, aout31_8, aout32_8,
               wout32_5, wout32_6, wout32_7, wout32_8;
                
    //mac_array_4x4_83
    wire [7:0] aout29_12, aout30_12, aout31_12, aout32_12,
               wout32_9, wout32_10, wout32_11, wout32_12;
                
    //mac_array_4x4_84
    wire [7:0] aout29_16, aout30_16, aout31_16, aout32_16,
               wout32_13, wout32_14, wout32_15, wout32_16;
                
    //mac_array_4x4_85
    wire [7:0] aout29_20, aout30_20, aout31_20, aout32_20,
               wout32_17, wout32_18, wout32_19, wout32_20;
                
    //mac_array_4x4_86
    wire [7:0] aout29_24, aout30_24, aout31_24, aout32_24,
               wout32_21, wout32_22, wout32_23, wout32_24;
                
    //mac_array_4x4_87
    wire [7:0] aout29_28, aout30_28, aout31_28, aout32_28,
               wout32_25, wout32_26, wout32_27, wout32_28;
                
    //mac_array_4x4_88
    wire [7:0] aout29_32, aout30_32, aout31_32, aout32_32,
               wout32_29, wout32_30, wout32_31, wout32_32;
               
      
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
                    
    mac_array_4x4 mac_array_4x4_15 (.clk(clk), .rst(rst),
                    .ain1(aout1_16), .ain2(aout2_16), .ain3(aout3_16), .ain4(aout4_16),
                    .win1(win17), .win2(win18), .win3(win19), .win4(win20),
                    .aout1(aout1_20), .aout2(aout2_20), .aout3(aout3_20), .aout4(aout4_20),
                    .wout1(wout4_17), .wout2(wout4_18), .wout3(wout4_19), .wout4(wout4_20),
                    .sout11(sout1_17), .sout12(sout1_18), .sout13(sout1_19), .sout14(sout1_20),
                    .sout21(sout2_17), .sout22(sout2_18), .sout23(sout2_19), .sout24(sout2_20),
                    .sout31(sout3_17), .sout32(sout3_18), .sout33(sout3_19), .sout34(sout3_20),
                    .sout41(sout4_17), .sout42(sout4_18), .sout43(sout4_19), .sout44(sout4_20)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_16 (.clk(clk), .rst(rst),
                    .ain1(aout1_20), .ain2(aout2_20), .ain3(aout3_20), .ain4(aout4_20),
                    .win1(win21), .win2(win22), .win3(win23), .win4(win24),
                    .aout1(aout1_24), .aout2(aout2_24), .aout3(aout3_24), .aout4(aout4_24),
                    .wout1(wout4_21), .wout2(wout4_22), .wout3(wout4_23), .wout4(wout4_24),
                    .sout11(sout1_21), .sout12(sout1_22), .sout13(sout1_23), .sout14(sout1_24),
                    .sout21(sout2_21), .sout22(sout2_22), .sout23(sout2_23), .sout24(sout2_24),
                    .sout31(sout3_21), .sout32(sout3_22), .sout33(sout3_23), .sout34(sout3_24),
                    .sout41(sout4_21), .sout42(sout4_22), .sout43(sout4_23), .sout44(sout4_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_17 (.clk(clk), .rst(rst),
                    .ain1(aout1_24), .ain2(aout2_24), .ain3(aout3_24), .ain4(aout4_24),
                    .win1(win25), .win2(win26), .win3(win27), .win4(win28),
                    .aout1(aout1_28), .aout2(aout2_28), .aout3(aout3_28), .aout4(aout4_28),
                    .wout1(wout4_25), .wout2(wout4_26), .wout3(wout4_27), .wout4(wout4_28),
                    .sout11(sout1_25), .sout12(sout1_26), .sout13(sout1_27), .sout14(sout1_28),
                    .sout21(sout2_25), .sout22(sout2_26), .sout23(sout2_27), .sout24(sout2_28),
                    .sout31(sout3_25), .sout32(sout3_26), .sout33(sout3_27), .sout34(sout3_28),
                    .sout41(sout4_25), .sout42(sout4_26), .sout43(sout4_27), .sout44(sout4_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_18 (.clk(clk), .rst(rst),
                    .ain1(aout1_28), .ain2(aout2_28), .ain3(aout3_28), .ain4(aout4_28),
                    .win1(win29), .win2(win30), .win3(win31), .win4(win32),
                    .aout1(aout1_32), .aout2(aout2_32), .aout3(aout3_32), .aout4(aout4_32),
                    .wout1(wout4_29), .wout2(wout4_30), .wout3(wout4_31), .wout4(wout4_32),
                    .sout11(sout1_29), .sout12(sout1_30), .sout13(sout1_31), .sout14(sout1_32),
                    .sout21(sout2_29), .sout22(sout2_30), .sout23(sout2_31), .sout24(sout2_32),
                    .sout31(sout3_29), .sout32(sout3_30), .sout33(sout3_31), .sout34(sout3_32),
                    .sout41(sout4_29), .sout42(sout4_30), .sout43(sout4_31), .sout44(sout4_32)
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
                    
    mac_array_4x4 mac_array_4x4_25 (.clk(clk), .rst(rst),
                    .ain1(aout5_16), .ain2(aout6_16), .ain3(aout7_16), .ain4(aout8_16),
                    .win1(wout4_17), .win2(wout4_18), .win3(wout4_19), .win4(wout4_20),
                    .aout1(aout5_20), .aout2(aout6_20), .aout3(aout7_20), .aout4(aout8_20),
                    .wout1(wout8_17), .wout2(wout8_18), .wout3(wout8_19), .wout4(wout8_20),
                    .sout11(sout5_17), .sout12(sout5_18), .sout13(sout5_19), .sout14(sout5_20),
                    .sout21(sout6_17), .sout22(sout6_18), .sout23(sout6_19), .sout24(sout6_20),
                    .sout31(sout7_17), .sout32(sout7_18), .sout33(sout7_19), .sout34(sout7_20),
                    .sout41(sout8_17), .sout42(sout8_18), .sout43(sout8_19), .sout44(sout8_20)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_26 (.clk(clk), .rst(rst),
                    .ain1(aout5_20), .ain2(aout6_20), .ain3(aout7_20), .ain4(aout8_20),
                    .win1(wout4_21), .win2(wout4_22), .win3(wout4_23), .win4(wout4_24),
                    .aout1(aout5_24), .aout2(aout6_24), .aout3(aout7_24), .aout4(aout8_24),
                    .wout1(wout8_21), .wout2(wout8_22), .wout3(wout8_23), .wout4(wout8_24),
                    .sout11(sout5_21), .sout12(sout5_22), .sout13(sout5_23), .sout14(sout5_24),
                    .sout21(sout6_21), .sout22(sout6_22), .sout23(sout6_23), .sout24(sout6_24),
                    .sout31(sout7_21), .sout32(sout7_22), .sout33(sout7_23), .sout34(sout7_24),
                    .sout41(sout8_21), .sout42(sout8_22), .sout43(sout8_23), .sout44(sout8_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_27 (.clk(clk), .rst(rst),
                    .ain1(aout5_24), .ain2(aout6_24), .ain3(aout7_24), .ain4(aout8_24),
                    .win1(wout4_25), .win2(wout4_26), .win3(wout4_27), .win4(wout4_28),
                    .aout1(aout5_28), .aout2(aout6_28), .aout3(aout7_28), .aout4(aout8_28),
                    .wout1(wout8_25), .wout2(wout8_26), .wout3(wout8_27), .wout4(wout8_28),
                    .sout11(sout5_25), .sout12(sout5_26), .sout13(sout5_27), .sout14(sout5_28),
                    .sout21(sout6_25), .sout22(sout6_26), .sout23(sout6_27), .sout24(sout6_28),
                    .sout31(sout7_25), .sout32(sout7_26), .sout33(sout7_27), .sout34(sout7_28),
                    .sout41(sout8_25), .sout42(sout8_26), .sout43(sout8_27), .sout44(sout8_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_28 (.clk(clk), .rst(rst),
                    .ain1(aout5_28), .ain2(aout6_28), .ain3(aout7_28), .ain4(aout8_28),
                    .win1(wout4_29), .win2(wout4_30), .win3(wout4_31), .win4(wout4_32),
                    .aout1(aout5_32), .aout2(aout6_32), .aout3(aout7_32), .aout4(aout8_32),
                    .wout1(wout8_29), .wout2(wout8_30), .wout3(wout8_31), .wout4(wout8_32),
                    .sout11(sout5_29), .sout12(sout5_30), .sout13(sout5_31), .sout14(sout5_32),
                    .sout21(sout6_29), .sout22(sout6_30), .sout23(sout6_31), .sout24(sout6_32),
                    .sout31(sout7_29), .sout32(sout7_30), .sout33(sout7_31), .sout34(sout7_32),
                    .sout41(sout8_29), .sout42(sout8_30), .sout43(sout8_31), .sout44(sout8_32)
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
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_35 (.clk(clk), .rst(rst),
                    .ain1(aout9_16), .ain2(aout10_16), .ain3(aout11_16), .ain4(aout12_16),
                    .win1(wout8_17), .win2(wout8_18), .win3(wout8_19), .win4(wout8_20),
                    .aout1(aout9_20), .aout2(aout10_20), .aout3(aout11_20), .aout4(aout12_20),
                    .wout1(wout12_17), .wout2(wout12_18), .wout3(wout12_19), .wout4(wout12_20),
                    .sout11(sout9_17), .sout12(sout9_18), .sout13(sout9_19), .sout14(sout9_20),
                    .sout21(sout10_17), .sout22(sout10_18), .sout23(sout10_19), .sout24(sout10_20),
                    .sout31(sout11_17), .sout32(sout11_18), .sout33(sout11_19), .sout34(sout11_20),
                    .sout41(sout12_17), .sout42(sout12_18), .sout43(sout12_19), .sout44(sout12_20)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_36 (.clk(clk), .rst(rst),
                    .ain1(aout9_20), .ain2(aout10_20), .ain3(aout11_20), .ain4(aout12_20),
                    .win1(wout8_21), .win2(wout8_22), .win3(wout8_23), .win4(wout8_24),
                    .aout1(aout9_24), .aout2(aout10_24), .aout3(aout11_24), .aout4(aout12_24),
                    .wout1(wout12_21), .wout2(wout12_22), .wout3(wout12_23), .wout4(wout12_24),
                    .sout11(sout9_21), .sout12(sout9_22), .sout13(sout9_23), .sout14(sout9_24),
                    .sout21(sout10_21), .sout22(sout10_22), .sout23(sout10_23), .sout24(sout10_24),
                    .sout31(sout11_21), .sout32(sout11_22), .sout33(sout11_23), .sout34(sout11_24),
                    .sout41(sout12_21), .sout42(sout12_22), .sout43(sout12_23), .sout44(sout12_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_37 (.clk(clk), .rst(rst),
                    .ain1(aout9_24), .ain2(aout10_24), .ain3(aout11_24), .ain4(aout12_24),
                    .win1(wout8_25), .win2(wout8_26), .win3(wout8_27), .win4(wout8_28),
                    .aout1(aout9_28), .aout2(aout10_28), .aout3(aout11_28), .aout4(aout12_28),
                    .wout1(wout12_25), .wout2(wout12_26), .wout3(wout12_27), .wout4(wout12_28),
                    .sout11(sout9_25), .sout12(sout9_26), .sout13(sout9_27), .sout14(sout9_28),
                    .sout21(sout10_25), .sout22(sout10_26), .sout23(sout10_27), .sout24(sout10_28),
                    .sout31(sout11_25), .sout32(sout11_26), .sout33(sout11_27), .sout34(sout11_28),
                    .sout41(sout12_25), .sout42(sout12_26), .sout43(sout12_27), .sout44(sout12_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_38 (.clk(clk), .rst(rst),
                    .ain1(aout9_28), .ain2(aout10_28), .ain3(aout11_28), .ain4(aout12_28),
                    .win1(wout8_29), .win2(wout8_30), .win3(wout8_31), .win4(wout8_32),
                    .aout1(aout9_32), .aout2(aout10_32), .aout3(aout11_32), .aout4(aout12_32),
                    .wout1(wout12_29), .wout2(wout12_30), .wout3(wout12_31), .wout4(wout12_32),
                    .sout11(sout9_29), .sout12(sout9_30), .sout13(sout9_31), .sout14(sout9_32),
                    .sout21(sout10_29), .sout22(sout10_30), .sout23(sout10_31), .sout24(sout10_32),
                    .sout31(sout11_29), .sout32(sout11_30), .sout33(sout11_31), .sout34(sout11_32),
                    .sout41(sout12_29), .sout42(sout12_30), .sout43(sout12_31), .sout44(sout12_32)
                    ); //4x4 MAC array
                    
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
                    
    mac_array_4x4 mac_array_4x4_45 (.clk(clk), .rst(rst),
                    .ain1(aout13_16), .ain2(aout14_16), .ain3(aout15_16), .ain4(aout16_16),
                    .win1(wout12_17), .win2(wout12_18), .win3(wout12_19), .win4(wout12_20),
                    .aout1(aout13_20), .aout2(aout14_20), .aout3(aout15_20), .aout4(aout16_20),
                    .wout1(wout16_17), .wout2(wout16_18), .wout3(wout16_19), .wout4(wout16_20),
                    .sout11(sout13_17), .sout12(sout13_18), .sout13(sout13_19), .sout14(sout13_20),
                    .sout21(sout14_17), .sout22(sout14_18), .sout23(sout14_19), .sout24(sout14_20),
                    .sout31(sout15_17), .sout32(sout15_18), .sout33(sout15_19), .sout34(sout15_20),
                    .sout41(sout16_17), .sout42(sout16_18), .sout43(sout16_19), .sout44(sout16_20)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_46 (.clk(clk), .rst(rst),
                    .ain1(aout13_20), .ain2(aout14_20), .ain3(aout15_20), .ain4(aout16_20),
                    .win1(wout12_21), .win2(wout12_22), .win3(wout12_23), .win4(wout12_24),
                    .aout1(aout13_24), .aout2(aout14_24), .aout3(aout15_24), .aout4(aout16_24),
                    .wout1(wout16_21), .wout2(wout16_22), .wout3(wout16_23), .wout4(wout16_24),
                    .sout11(sout13_21), .sout12(sout13_22), .sout13(sout13_23), .sout14(sout13_24),
                    .sout21(sout14_21), .sout22(sout14_22), .sout23(sout14_23), .sout24(sout14_24),
                    .sout31(sout15_21), .sout32(sout15_22), .sout33(sout15_23), .sout34(sout15_24),
                    .sout41(sout16_21), .sout42(sout16_22), .sout43(sout16_23), .sout44(sout16_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_47 (.clk(clk), .rst(rst),
                    .ain1(aout13_24), .ain2(aout14_24), .ain3(aout15_24), .ain4(aout16_24),
                    .win1(wout12_25), .win2(wout12_26), .win3(wout12_27), .win4(wout12_28),
                    .aout1(aout13_28), .aout2(aout14_28), .aout3(aout15_28), .aout4(aout16_28),
                    .wout1(wout16_25), .wout2(wout16_26), .wout3(wout16_27), .wout4(wout16_28),
                    .sout11(sout13_25), .sout12(sout13_26), .sout13(sout13_27), .sout14(sout13_28),
                    .sout21(sout14_25), .sout22(sout14_26), .sout23(sout14_27), .sout24(sout14_28),
                    .sout31(sout15_25), .sout32(sout15_26), .sout33(sout15_27), .sout34(sout15_28),
                    .sout41(sout16_25), .sout42(sout16_26), .sout43(sout16_27), .sout44(sout16_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_48 (.clk(clk), .rst(rst),
                    .ain1(aout13_28), .ain2(aout14_28), .ain3(aout15_28), .ain4(aout16_28),
                    .win1(wout12_29), .win2(wout12_30), .win3(wout12_31), .win4(wout12_32),
                    .aout1(aout13_32), .aout2(aout14_32), .aout3(aout15_32), .aout4(aout16_32),
                    .wout1(wout16_29), .wout2(wout16_30), .wout3(wout16_31), .wout4(wout16_32),
                    .sout11(sout13_29), .sout12(sout13_30), .sout13(sout13_31), .sout14(sout13_32),
                    .sout21(sout14_29), .sout22(sout14_30), .sout23(sout14_31), .sout24(sout14_32),
                    .sout31(sout15_29), .sout32(sout15_30), .sout33(sout15_31), .sout34(sout15_32),
                    .sout41(sout16_29), .sout42(sout16_30), .sout43(sout16_31), .sout44(sout16_32)
                    ); //4x4 MAC array
                    
    //row5
    mac_array_4x4 mac_array_4x4_51 (.clk(clk), .rst(rst),
                    .ain1(ain17), .ain2(ain18), .ain3(ain19), .ain4(ain20),
                    .win1(wout16_1), .win2(wout16_2), .win3(wout16_3), .win4(wout16_4),
                    .aout1(aout17_4), .aout2(aout18_4), .aout3(aout19_4), .aout4(aout20_4),
                    .wout1(wout20_1), .wout2(wout20_2), .wout3(wout20_3), .wout4(wout20_4),
                    .sout11(sout17_1), .sout12(sout17_2), .sout13(sout17_3), .sout14(sout17_4),
                    .sout21(sout18_1), .sout22(sout18_2), .sout23(sout18_3), .sout24(sout18_4),
                    .sout31(sout19_1), .sout32(sout19_2), .sout33(sout19_3), .sout34(sout19_4),
                    .sout41(sout20_1), .sout42(sout20_2), .sout43(sout20_3), .sout44(sout20_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_52 (.clk(clk), .rst(rst),
                    .ain1(aout17_4), .ain2(aout18_4), .ain3(aout18_4), .ain4(aout20_4),
                    .win1(wout16_5), .win2(wout16_6), .win3(wout16_7), .win4(wout16_8),
                    .aout1(aout17_8), .aout2(aout18_8), .aout3(aout19_8), .aout4(aout20_8),
                    .wout1(wout20_5), .wout2(wout20_6), .wout3(wout20_7), .wout4(wout20_8),
                    .sout11(sout17_5), .sout12(sout17_6), .sout13(sout17_7), .sout14(sout17_8),
                    .sout21(sout18_5), .sout22(sout18_6), .sout23(sout18_7), .sout24(sout18_8),
                    .sout31(sout19_5), .sout32(sout19_6), .sout33(sout19_7), .sout34(sout19_8),
                    .sout41(sout20_5), .sout42(sout20_6), .sout43(sout20_7), .sout44(sout20_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_53 (.clk(clk), .rst(rst),
                    .ain1(aout17_8), .ain2(aout18_8), .ain3(aout19_8), .ain4(aout20_8),
                    .win1(wout16_9), .win2(wout16_10), .win3(wout16_11), .win4(wout16_12),
                    .aout1(aout17_12), .aout2(aout18_12), .aout3(aout19_12), .aout4(aout20_12),
                    .wout1(wout20_9), .wout2(wout20_10), .wout3(wout20_11), .wout4(wout20_12),
                    .sout11(sout17_9), .sout12(sout17_10), .sout13(sout17_11), .sout14(sout17_12),
                    .sout21(sout18_9), .sout22(sout18_10), .sout23(sout18_11), .sout24(sout18_12),
                    .sout31(sout19_9), .sout32(sout19_10), .sout33(sout19_11), .sout34(sout19_12),
                    .sout41(sout20_9), .sout42(sout20_10), .sout43(sout20_11), .sout44(sout20_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_54 (.clk(clk), .rst(rst),
                    .ain1(aout17_12), .ain2(aout18_12), .ain3(aout19_12), .ain4(aout20_12),
                    .win1(wout16_13), .win2(wout16_14), .win3(wout16_15), .win4(wout16_16),
                    .aout1(aout17_16), .aout2(aout18_16), .aout3(aout19_16), .aout4(aout20_16),
                    .wout1(wout20_13), .wout2(wout20_14), .wout3(wout20_15), .wout4(wout20_16),
                    .sout11(sout17_13), .sout12(sout17_14), .sout13(sout17_15), .sout14(sout17_16),
                    .sout21(sout18_13), .sout22(sout18_14), .sout23(sout18_15), .sout24(sout18_16),
                    .sout31(sout19_13), .sout32(sout19_14), .sout33(sout19_15), .sout34(sout19_16),
                    .sout41(sout20_13), .sout42(sout20_14), .sout43(sout20_15), .sout44(sout20_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_55 (.clk(clk), .rst(rst),
                    .ain1(aout17_16), .ain2(aout18_16), .ain3(aout19_16), .ain4(aout20_16),
                    .win1(wout16_17), .win2(wout16_18), .win3(wout16_19), .win4(wout16_20),
                    .aout1(aout17_20), .aout2(aout18_20), .aout3(aout19_20), .aout4(aout20_20),
                    .wout1(wout20_17), .wout2(wout20_18), .wout3(wout20_19), .wout4(wout20_20),
                    .sout11(sout17_17), .sout12(sout17_18), .sout13(sout17_19), .sout14(sout17_20),
                    .sout21(sout18_17), .sout22(sout18_18), .sout23(sout18_19), .sout24(sout18_20),
                    .sout31(sout19_17), .sout32(sout19_18), .sout33(sout19_19), .sout34(sout19_20),
                    .sout41(sout20_17), .sout42(sout20_18), .sout43(sout20_19), .sout44(sout20_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_56 (.clk(clk), .rst(rst),
                    .ain1(aout17_20), .ain2(aout18_20), .ain3(aout19_20), .ain4(aout20_20),
                    .win1(wout16_21), .win2(wout16_22), .win3(wout16_23), .win4(wout16_24),
                    .aout1(aout17_24), .aout2(aout18_24), .aout3(aout19_24), .aout4(aout20_24),
                    .wout1(wout20_21), .wout2(wout20_22), .wout3(wout20_23), .wout4(wout20_24),
                    .sout11(sout17_21), .sout12(sout17_22), .sout13(sout17_23), .sout14(sout17_24),
                    .sout21(sout18_21), .sout22(sout18_22), .sout23(sout18_23), .sout24(sout18_24),
                    .sout31(sout19_21), .sout32(sout19_22), .sout33(sout19_23), .sout34(sout19_24),
                    .sout41(sout20_21), .sout42(sout20_22), .sout43(sout20_23), .sout44(sout20_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_57 (.clk(clk), .rst(rst),
                    .ain1(aout17_24), .ain2(aout18_24), .ain3(aout19_24), .ain4(aout20_24),
                    .win1(wout16_25), .win2(wout16_26), .win3(wout16_27), .win4(wout16_28),
                    .aout1(aout17_28), .aout2(aout18_28), .aout3(aout19_28), .aout4(aout20_28),
                    .wout1(wout20_25), .wout2(wout20_26), .wout3(wout20_27), .wout4(wout20_28),
                    .sout11(sout17_25), .sout12(sout17_26), .sout13(sout17_27), .sout14(sout17_28),
                    .sout21(sout18_25), .sout22(sout18_26), .sout23(sout18_27), .sout24(sout18_28),
                    .sout31(sout19_25), .sout32(sout19_26), .sout33(sout19_27), .sout34(sout19_28),
                    .sout41(sout20_25), .sout42(sout20_26), .sout43(sout20_27), .sout44(sout20_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_58 (.clk(clk), .rst(rst),
                    .ain1(aout17_28), .ain2(aout18_28), .ain3(aout19_28), .ain4(aout20_28),
                    .win1(wout16_29), .win2(wout16_30), .win3(wout16_31), .win4(wout16_32),
                    .aout1(aout17_32), .aout2(aout18_32), .aout3(aout19_32), .aout4(aout20_32),
                    .wout1(wout20_29), .wout2(wout20_30), .wout3(wout20_31), .wout4(wout20_32),
                    .sout11(sout17_29), .sout12(sout17_30), .sout13(sout17_31), .sout14(sout17_32),
                    .sout21(sout18_29), .sout22(sout18_30), .sout23(sout18_31), .sout24(sout18_32),
                    .sout31(sout19_29), .sout32(sout19_30), .sout33(sout19_31), .sout34(sout19_32),
                    .sout41(sout20_29), .sout42(sout20_30), .sout43(sout20_31), .sout44(sout20_32)
                    ); //4x4 MAC array
                    
    //row6
    mac_array_4x4 mac_array_4x4_61 (.clk(clk), .rst(rst),
                    .ain1(ain21), .ain2(ain22), .ain3(ain23), .ain4(ain24),
                    .win1(wout20_1), .win2(wout20_2), .win3(wout20_3), .win4(wout20_4),
                    .aout1(aout21_4), .aout2(aout22_4), .aout3(aout23_4), .aout4(aout24_4),
                    .wout1(wout24_1), .wout2(wout24_2), .wout3(wout24_3), .wout4(wout24_4),
                    .sout11(sout21_1), .sout12(sout21_2), .sout13(sout21_3), .sout14(sout21_4),
                    .sout21(sout22_1), .sout22(sout22_2), .sout23(sout22_3), .sout24(sout22_4),
                    .sout31(sout23_1), .sout32(sout23_2), .sout33(sout23_3), .sout34(sout23_4),
                    .sout41(sout24_1), .sout42(sout24_2), .sout43(sout24_3), .sout44(sout24_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_62 (.clk(clk), .rst(rst),
                    .ain1(aout21_4), .ain2(aout22_4), .ain3(aout23_4), .ain4(aout24_4),
                    .win1(wout20_5), .win2(wout20_6), .win3(wout20_7), .win4(wout20_8),
                    .aout1(aout21_8), .aout2(aout22_8), .aout3(aout23_8), .aout4(aout24_8),
                    .wout1(wout24_5), .wout2(wout24_6), .wout3(wout24_7), .wout4(wout24_8),
                    .sout11(sout21_5), .sout12(sout21_6), .sout13(sout21_7), .sout14(sout21_8),
                    .sout21(sout22_5), .sout22(sout22_6), .sout23(sout22_7), .sout24(sout22_8),
                    .sout31(sout23_5), .sout32(sout23_6), .sout33(sout23_7), .sout34(sout23_8),
                    .sout41(sout24_5), .sout42(sout24_6), .sout43(sout24_7), .sout44(sout24_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_63 (.clk(clk), .rst(rst),
                    .ain1(aout21_8), .ain2(aout22_8), .ain3(aout23_8), .ain4(aout24_8),
                    .win1(wout20_9), .win2(wout20_10), .win3(wout20_11), .win4(wout20_12),
                    .aout1(aout21_12), .aout2(aout22_12), .aout3(aout23_12), .aout4(aout24_12),
                    .wout1(wout24_9), .wout2(wout24_10), .wout3(wout24_11), .wout4(wout24_12),
                    .sout11(sout21_9), .sout12(sout21_10), .sout13(sout21_11), .sout14(sout21_12),
                    .sout21(sout22_9), .sout22(sout22_10), .sout23(sout22_11), .sout24(sout22_12),
                    .sout31(sout23_9), .sout32(sout23_10), .sout33(sout23_11), .sout34(sout23_12),
                    .sout41(sout24_9), .sout42(sout24_10), .sout43(sout24_11), .sout44(sout24_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_64 (.clk(clk), .rst(rst),
                    .ain1(aout21_12), .ain2(aout22_12), .ain3(aout23_12), .ain4(aout24_12),
                    .win1(wout20_13), .win2(wout20_14), .win3(wout20_15), .win4(wout20_16),
                    .aout1(aout21_16), .aout2(aout22_16), .aout3(aout23_16), .aout4(aout24_16),
                    .wout1(wout24_13), .wout2(wout24_14), .wout3(wout24_15), .wout4(wout24_16),
                    .sout11(sout21_13), .sout12(sout21_14), .sout13(sout21_15), .sout14(sout21_16),
                    .sout21(sout22_13), .sout22(sout22_14), .sout23(sout22_15), .sout24(sout22_16),
                    .sout31(sout23_13), .sout32(sout23_14), .sout33(sout23_15), .sout34(sout23_16),
                    .sout41(sout24_13), .sout42(sout24_14), .sout43(sout24_15), .sout44(sout24_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_65 (.clk(clk), .rst(rst),
                    .ain1(aout21_16), .ain2(aout22_16), .ain3(aout23_16), .ain4(aout24_16),
                    .win1(wout20_17), .win2(wout20_18), .win3(wout20_19), .win4(wout20_20),
                    .aout1(aout21_20), .aout2(aout22_20), .aout3(aout23_20), .aout4(aout24_20),
                    .wout1(wout24_17), .wout2(wout24_18), .wout3(wout24_19), .wout4(wout24_20),
                    .sout11(sout21_17), .sout12(sout21_18), .sout13(sout21_19), .sout14(sout21_20),
                    .sout21(sout22_17), .sout22(sout22_18), .sout23(sout22_19), .sout24(sout22_20),
                    .sout31(sout23_17), .sout32(sout23_18), .sout33(sout23_19), .sout34(sout23_20),
                    .sout41(sout24_17), .sout42(sout24_18), .sout43(sout24_19), .sout44(sout24_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_66 (.clk(clk), .rst(rst),
                    .ain1(aout21_20), .ain2(aout22_20), .ain3(aout23_20), .ain4(aout24_20),
                    .win1(wout20_21), .win2(wout20_22), .win3(wout20_23), .win4(wout20_24),
                    .aout1(aout21_24), .aout2(aout22_24), .aout3(aout23_24), .aout4(aout24_24),
                    .wout1(wout24_21), .wout2(wout24_22), .wout3(wout24_23), .wout4(wout24_24),
                    .sout11(sout21_21), .sout12(sout21_22), .sout13(sout21_23), .sout14(sout21_24),
                    .sout21(sout22_21), .sout22(sout22_22), .sout23(sout22_23), .sout24(sout22_24),
                    .sout31(sout23_21), .sout32(sout23_22), .sout33(sout23_23), .sout34(sout23_24),
                    .sout41(sout24_21), .sout42(sout24_22), .sout43(sout24_23), .sout44(sout24_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_67 (.clk(clk), .rst(rst),
                    .ain1(aout21_24), .ain2(aout22_24), .ain3(aout23_24), .ain4(aout24_24),
                    .win1(wout20_25), .win2(wout20_26), .win3(wout20_27), .win4(wout20_28),
                    .aout1(aout21_28), .aout2(aout22_28), .aout3(aout23_28), .aout4(aout24_28),
                    .wout1(wout24_25), .wout2(wout24_26), .wout3(wout24_27), .wout4(wout24_28),
                    .sout11(sout21_25), .sout12(sout21_26), .sout13(sout21_27), .sout14(sout21_28),
                    .sout21(sout22_25), .sout22(sout22_26), .sout23(sout22_27), .sout24(sout22_28),
                    .sout31(sout23_25), .sout32(sout23_26), .sout33(sout23_27), .sout34(sout23_28),
                    .sout41(sout24_25), .sout42(sout24_26), .sout43(sout24_27), .sout44(sout24_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_68 (.clk(clk), .rst(rst),
                    .ain1(aout21_28), .ain2(aout22_28), .ain3(aout23_28), .ain4(aout24_28),
                    .win1(wout20_29), .win2(wout20_30), .win3(wout20_31), .win4(wout20_32),
                    .aout1(aout21_32), .aout2(aout22_32), .aout3(aout23_32), .aout4(aout24_32),
                    .wout1(wout24_29), .wout2(wout24_30), .wout3(wout24_31), .wout4(wout24_32),
                    .sout11(sout21_29), .sout12(sout21_30), .sout13(sout21_31), .sout14(sout21_32),
                    .sout21(sout22_29), .sout22(sout22_30), .sout23(sout22_31), .sout24(sout22_32),
                    .sout31(sout23_29), .sout32(sout23_30), .sout33(sout23_31), .sout34(sout23_32),
                    .sout41(sout24_29), .sout42(sout24_30), .sout43(sout24_31), .sout44(sout24_32)
                    ); //4x4 MAC array
                    
    //row7
    mac_array_4x4 mac_array_4x4_71 (.clk(clk), .rst(rst),
                    .ain1(ain25), .ain2(ain26), .ain3(ain27), .ain4(ain28),
                    .win1(wout24_1), .win2(wout24_2), .win3(wout24_3), .win4(wout24_4),
                    .aout1(aout25_4), .aout2(aout26_4), .aout3(aout27_4), .aout4(aout28_4),
                    .wout1(wout28_1), .wout2(wout28_2), .wout3(wout28_3), .wout4(wout28_4),
                    .sout11(sout25_1), .sout12(sout25_2), .sout13(sout25_3), .sout14(sout25_4),
                    .sout21(sout26_1), .sout22(sout26_2), .sout23(sout26_3), .sout24(sout26_4),
                    .sout31(sout27_1), .sout32(sout27_2), .sout33(sout27_3), .sout34(sout27_4),
                    .sout41(sout28_1), .sout42(sout28_2), .sout43(sout28_3), .sout44(sout28_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_72 (.clk(clk), .rst(rst),
                    .ain1(aout25_4), .ain2(aout26_4), .ain3(aout27_4), .ain4(aout28_4),
                    .win1(wout24_5), .win2(wout24_6), .win3(wout24_7), .win4(wout24_8),
                    .aout1(aout25_8), .aout2(aout26_8), .aout3(aout27_8), .aout4(aout28_8),
                    .wout1(wout28_5), .wout2(wout28_6), .wout3(wout28_7), .wout4(wout28_8),
                    .sout11(sout25_5), .sout12(sout25_6), .sout13(sout25_7), .sout14(sout25_8),
                    .sout21(sout26_5), .sout22(sout26_6), .sout23(sout26_7), .sout24(sout26_8),
                    .sout31(sout27_5), .sout32(sout27_6), .sout33(sout27_7), .sout34(sout27_8),
                    .sout41(sout28_5), .sout42(sout28_6), .sout43(sout28_7), .sout44(sout28_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_73 (.clk(clk), .rst(rst),
                    .ain1(aout25_8), .ain2(aout26_8), .ain3(aout27_8), .ain4(aout28_8),
                    .win1(wout24_9), .win2(wout24_10), .win3(wout24_11), .win4(wout24_12),
                    .aout1(aout25_12), .aout2(aout26_12), .aout3(aout27_12), .aout4(aout28_12),
                    .wout1(wout28_9), .wout2(wout28_10), .wout3(wout28_11), .wout4(wout28_12),
                    .sout11(sout25_9), .sout12(sout25_10), .sout13(sout25_11), .sout14(sout25_12),
                    .sout21(sout26_9), .sout22(sout26_10), .sout23(sout26_11), .sout24(sout26_12),
                    .sout31(sout27_9), .sout32(sout27_10), .sout33(sout27_11), .sout34(sout27_12),
                    .sout41(sout28_9), .sout42(sout28_10), .sout43(sout28_11), .sout44(sout28_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_74 (.clk(clk), .rst(rst),
                    .ain1(aout25_12), .ain2(aout26_12), .ain3(aout27_12), .ain4(aout28_12),
                    .win1(wout24_13), .win2(wout24_14), .win3(wout24_15), .win4(wout24_16),
                    .aout1(aout25_16), .aout2(aout26_16), .aout3(aout27_16), .aout4(aout28_16),
                    .wout1(wout28_13), .wout2(wout28_14), .wout3(wout28_15), .wout4(wout28_16),
                    .sout11(sout25_13), .sout12(sout25_14), .sout13(sout25_15), .sout14(sout25_16),
                    .sout21(sout26_13), .sout22(sout26_14), .sout23(sout26_15), .sout24(sout26_16),
                    .sout31(sout27_13), .sout32(sout27_14), .sout33(sout27_15), .sout34(sout27_16),
                    .sout41(sout28_13), .sout42(sout28_14), .sout43(sout28_15), .sout44(sout28_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_75 (.clk(clk), .rst(rst),
                    .ain1(aout25_16), .ain2(aout26_16), .ain3(aout27_16), .ain4(aout28_16),
                    .win1(wout24_17), .win2(wout24_18), .win3(wout24_19), .win4(wout24_20),
                    .aout1(aout25_20), .aout2(aout26_20), .aout3(aout27_20), .aout4(aout28_20),
                    .wout1(wout28_17), .wout2(wout28_18), .wout3(wout28_19), .wout4(wout28_20),
                    .sout11(sout25_17), .sout12(sout25_18), .sout13(sout25_19), .sout14(sout25_20),
                    .sout21(sout26_17), .sout22(sout26_18), .sout23(sout26_19), .sout24(sout26_20),
                    .sout31(sout27_17), .sout32(sout27_18), .sout33(sout27_19), .sout34(sout27_20),
                    .sout41(sout28_17), .sout42(sout28_18), .sout43(sout28_19), .sout44(sout28_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_76 (.clk(clk), .rst(rst),
                    .ain1(aout25_20), .ain2(aout26_20), .ain3(aout27_20), .ain4(aout28_20),
                    .win1(wout24_21), .win2(wout24_22), .win3(wout24_23), .win4(wout24_24),
                    .aout1(aout25_24), .aout2(aout26_24), .aout3(aout27_24), .aout4(aout28_24),
                    .wout1(wout28_21), .wout2(wout28_22), .wout3(wout28_23), .wout4(wout28_24),
                    .sout11(sout25_21), .sout12(sout25_22), .sout13(sout25_23), .sout14(sout25_24),
                    .sout21(sout26_21), .sout22(sout26_22), .sout23(sout26_23), .sout24(sout26_24),
                    .sout31(sout27_21), .sout32(sout27_22), .sout33(sout27_23), .sout34(sout27_24),
                    .sout41(sout28_21), .sout42(sout28_22), .sout43(sout28_23), .sout44(sout28_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_77 (.clk(clk), .rst(rst),
                    .ain1(aout25_24), .ain2(aout26_24), .ain3(aout27_24), .ain4(aout28_24),
                    .win1(wout24_25), .win2(wout24_26), .win3(wout24_27), .win4(wout24_28),
                    .aout1(aout25_28), .aout2(aout26_28), .aout3(aout27_28), .aout4(aout28_28),
                    .wout1(wout28_25), .wout2(wout28_26), .wout3(wout28_27), .wout4(wout28_28),
                    .sout11(sout25_25), .sout12(sout25_26), .sout13(sout25_27), .sout14(sout25_28),
                    .sout21(sout26_25), .sout22(sout26_26), .sout23(sout26_27), .sout24(sout26_28),
                    .sout31(sout27_25), .sout32(sout27_26), .sout33(sout27_27), .sout34(sout27_28),
                    .sout41(sout28_25), .sout42(sout28_26), .sout43(sout28_27), .sout44(sout28_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_78 (.clk(clk), .rst(rst),
                    .ain1(aout25_28), .ain2(aout26_28), .ain3(aout27_28), .ain4(aout28_28),
                    .win1(wout24_29), .win2(wout24_30), .win3(wout24_31), .win4(wout24_32),
                    .aout1(aout25_32), .aout2(aout26_32), .aout3(aout27_32), .aout4(aout28_32),
                    .wout1(wout28_29), .wout2(wout28_30), .wout3(wout28_31), .wout4(wout28_32),
                    .sout11(sout25_29), .sout12(sout25_30), .sout13(sout25_31), .sout14(sout25_32),
                    .sout21(sout26_29), .sout22(sout26_30), .sout23(sout26_31), .sout24(sout26_32),
                    .sout31(sout27_29), .sout32(sout27_30), .sout33(sout27_31), .sout34(sout27_32),
                    .sout41(sout28_29), .sout42(sout28_30), .sout43(sout28_31), .sout44(sout28_32)
                    ); //4x4 MAC array
                    
    //row8    
    mac_array_4x4 mac_array_4x4_81 (.clk(clk), .rst(rst),
                    .ain1(ain29), .ain2(ain30), .ain3(ain31), .ain4(ain32),
                    .win1(wout28_1), .win2(wout28_2), .win3(wout28_3), .win4(wout28_4),
                    .aout1(aout29_4), .aout2(aout30_4), .aout3(aout31_4), .aout4(aout32_4),
                    .wout1(wout32_1), .wout2(wout32_2), .wout3(wout32_3), .wout4(wout32_4),
                    .sout11(sout29_1), .sout12(sout29_2), .sout13(sout29_3), .sout14(sout29_4),
                    .sout21(sout30_1), .sout22(sout30_2), .sout23(sout30_3), .sout24(sout30_4),
                    .sout31(sout31_1), .sout32(sout31_2), .sout33(sout31_3), .sout34(sout31_4),
                    .sout41(sout32_1), .sout42(sout32_2), .sout43(sout32_3), .sout44(sout32_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_82 (.clk(clk), .rst(rst),
                    .ain1(aout29_4), .ain2(aout30_4), .ain3(aout31_4), .ain4(aout32_4),
                    .win1(wout28_5), .win2(wout28_6), .win3(wout28_7), .win4(wout28_8),
                    .aout1(aout29_8), .aout2(aout30_8), .aout3(aout31_8), .aout4(aout32_8),
                    .wout1(wout32_5), .wout2(wout32_6), .wout3(wout32_7), .wout4(wout32_8),
                    .sout11(sout29_5), .sout12(sout29_6), .sout13(sout29_7), .sout14(sout29_8),
                    .sout21(sout30_5), .sout22(sout30_6), .sout23(sout30_7), .sout24(sout30_8),
                    .sout31(sout31_5), .sout32(sout31_6), .sout33(sout31_7), .sout34(sout31_8),
                    .sout41(sout32_5), .sout42(sout32_6), .sout43(sout32_7), .sout44(sout32_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_83 (.clk(clk), .rst(rst),
                    .ain1(aout29_8), .ain2(aout30_8), .ain3(aout31_8), .ain4(aout32_8),
                    .win1(wout28_9), .win2(wout28_10), .win3(wout28_11), .win4(wout28_12),
                    .aout1(aout29_12), .aout2(aout30_12), .aout3(aout31_12), .aout4(aout32_12),
                    .wout1(wout32_9), .wout2(wout32_10), .wout3(wout32_11), .wout4(wout32_12),
                    .sout11(sout29_9), .sout12(sout29_10), .sout13(sout29_11), .sout14(sout29_12),
                    .sout21(sout30_9), .sout22(sout30_10), .sout23(sout30_11), .sout24(sout30_12),
                    .sout31(sout31_9), .sout32(sout31_10), .sout33(sout31_11), .sout34(sout31_12),
                    .sout41(sout32_9), .sout42(sout32_10), .sout43(sout32_11), .sout44(sout32_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_84 (.clk(clk), .rst(rst),
                    .ain1(aout29_12), .ain2(aout30_12), .ain3(aout31_12), .ain4(aout32_12),
                    .win1(wout28_13), .win2(wout28_14), .win3(wout28_15), .win4(wout28_16),
                    .aout1(aout29_16), .aout2(aout30_16), .aout3(aout31_16), .aout4(aout32_16),
                    .wout1(wout32_13), .wout2(wout32_14), .wout3(wout32_15), .wout4(wout32_16),
                    .sout11(sout29_13), .sout12(sout29_14), .sout13(sout29_15), .sout14(sout29_16),
                    .sout21(sout30_13), .sout22(sout30_14), .sout23(sout30_15), .sout24(sout30_16),
                    .sout31(sout31_13), .sout32(sout31_14), .sout33(sout31_15), .sout34(sout31_16),
                    .sout41(sout32_13), .sout42(sout32_14), .sout43(sout32_15), .sout44(sout32_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_85 (.clk(clk), .rst(rst),
                    .ain1(aout29_16), .ain2(aout30_16), .ain3(aout31_16), .ain4(aout32_16),
                    .win1(wout28_17), .win2(wout28_18), .win3(wout28_19), .win4(wout28_20),
                    .aout1(aout29_20), .aout2(aout30_20), .aout3(aout31_20), .aout4(aout32_20),
                    .wout1(wout32_17), .wout2(wout32_18), .wout3(wout32_19), .wout4(wout32_20),
                    .sout11(sout29_17), .sout12(sout29_18), .sout13(sout29_19), .sout14(sout29_20),
                    .sout21(sout30_17), .sout22(sout30_18), .sout23(sout30_19), .sout24(sout30_20),
                    .sout31(sout31_17), .sout32(sout31_18), .sout33(sout31_19), .sout34(sout31_20),
                    .sout41(sout32_17), .sout42(sout32_18), .sout43(sout32_19), .sout44(sout32_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_86 (.clk(clk), .rst(rst),
                    .ain1(aout29_20), .ain2(aout30_20), .ain3(aout31_20), .ain4(aout32_20),
                    .win1(wout28_21), .win2(wout28_22), .win3(wout28_23), .win4(wout28_24),
                    .aout1(aout29_24), .aout2(aout30_24), .aout3(aout31_24), .aout4(aout32_24),
                    .wout1(wout32_21), .wout2(wout32_22), .wout3(wout32_23), .wout4(wout32_24),
                    .sout11(sout29_21), .sout12(sout29_22), .sout13(sout29_23), .sout14(sout29_24),
                    .sout21(sout30_21), .sout22(sout30_22), .sout23(sout30_23), .sout24(sout30_24),
                    .sout31(sout31_21), .sout32(sout31_22), .sout33(sout31_23), .sout34(sout31_24),
                    .sout41(sout32_21), .sout42(sout32_22), .sout43(sout32_23), .sout44(sout32_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_87 (.clk(clk), .rst(rst),
                    .ain1(aout29_24), .ain2(aout30_24), .ain3(aout31_24), .ain4(aout32_24),
                    .win1(wout28_25), .win2(wout28_26), .win3(wout28_27), .win4(wout28_28),
                    .aout1(aout29_28), .aout2(aout30_28), .aout3(aout31_28), .aout4(aout32_28),
                    .wout1(wout32_25), .wout2(wout32_26), .wout3(wout32_27), .wout4(wout32_28),
                    .sout11(sout29_25), .sout12(sout29_26), .sout13(sout29_27), .sout14(sout29_28),
                    .sout21(sout30_25), .sout22(sout30_26), .sout23(sout30_27), .sout24(sout30_28),
                    .sout31(sout31_25), .sout32(sout31_26), .sout33(sout31_27), .sout34(sout31_28),
                    .sout41(sout32_25), .sout42(sout32_26), .sout43(sout32_27), .sout44(sout32_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_88 (.clk(clk), .rst(rst),
                    .ain1(aout29_28), .ain2(aout30_28), .ain3(aout31_28), .ain4(aout32_28),
                    .win1(wout28_29), .win2(wout28_30), .win3(wout28_31), .win4(wout28_32),
                    .aout1(aout29_32), .aout2(aout30_32), .aout3(aout31_32), .aout4(aout32_32),
                    .wout1(wout32_29), .wout2(wout32_30), .wout3(wout32_31), .wout4(wout32_32),
                    .sout11(sout29_29), .sout12(sout29_30), .sout13(sout29_31), .sout14(sout29_32),
                    .sout21(sout30_29), .sout22(sout30_30), .sout23(sout30_31), .sout24(sout30_32),
                    .sout31(sout31_29), .sout32(sout31_30), .sout33(sout31_31), .sout34(sout31_32),
                    .sout41(sout32_29), .sout42(sout32_30), .sout43(sout32_31), .sout44(sout32_32)
                    ); //4x4 MAC array
                 
    
endmodule
