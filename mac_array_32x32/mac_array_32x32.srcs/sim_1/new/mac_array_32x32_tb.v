`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 08:29:12 PM
// Design Name: 
// Module Name: mac_array_32x32_tb
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


module mac_array_32x32_tb(

    );
    
    //inputs
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
              ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
              ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
              ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32;
              
    reg [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
              win9, win10, win11, win12, win13, win14, win15, win16, 
              win17, win18, win19, win20, win21, win22, win23, win24, 
              win25, win26, win27, win28, win29, win30, win31, win32; 
              
    
    //outputs       
    wire [20:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32;
    
    wire [20:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32;
    
    wire [20:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32;
    
    wire [20:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32;
    
    wire [20:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32;
    
    wire [20:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32;
    
    wire [20:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32; 
    
    wire [20:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32;
    
    wire [20:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32;
    
    wire [20:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32;
    
    wire [20:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32;
    
    wire [20:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32;
    
    wire [20:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32;
    
    wire [20:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32;
    
    wire [20:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32;
    
    wire [20:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32;
    
    wire [20:0] sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32;
    
    wire [20:0] sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32;
    
    wire [20:0] sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32;
    
    wire [20:0] sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32;
    
    wire [20:0] sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32;
    
    wire [20:0] sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32;
    
    wire [20:0] sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32;
    
    wire [20:0] sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32;
    
    wire [20:0] sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32;
    
    wire [20:0] sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32; 
    
    wire [20:0] sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32;
    
    wire [20:0] sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32;
    
    wire [20:0] sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32;
    
    wire [20:0] sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32;
    
    wire [20:0] sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32;
    
    wire [20:0] sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32;
               
    mac_array_32x32 DUT(clk, rst,
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
                
    initial begin
        clk = 1;
        forever begin
            clk = ~clk;
            #10; 
        end
    end
    
    initial begin
    
        //test 1
        
        //set
        rst = 1;
        
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        rst = 0;
        
        //inputs
        
        //A[] = 32x2
        //{ain11 = 1,    ain12 = 2,
        // ain21 = 3,    ain22 = 4,
        // ain31 = 5,    ain32 = 6, 
        // ain41 = 7,    ain42 = 8,
        // ain51 = 9,    ain52 = 10,
        // ain61 = 11,   ain62 = 12,
        // ain71 = 13,   ain72 = 14,
        // ain81 = 15,   ain82 = 16,
        // ain91 = 1,    ain92 = 2
        // ain10_1 = 3,  ain10_2 = 4,
        // ain11_1 = 5,  ain11_2 = 6,
        // ain12_1 = 7,  ain12_2 = 8,
        // ain13_1 = 9,  ain13_2 = 10,
        // ain14_1 = 11, ain14_2 = 12,
        // ain15_1 = 13, ain15_2 = 14
        // ain16_1 = 15, ain16_2 = 16,
        // ain17_1 = 1,  ain17_2 = 2,
        // ain18_1 = 3,  ain18_2 = 4,
        // ain19_1 = 5,  ain19_2 = 6,
        // ain20_1 = 7,  ain20_2 = 8,
        // ain21_1 = 9,  ain21_2 = 10,
        // ain22_1 = 11, ain22_2 = 12,
        // ain23_1 = 13, ain23_2 = 14,
        // ain24_1 = 15, ain24_2 = 16,
        // ain25_1 = 1,  ain25_2 = 2,
        // ain26_1 = 3,  ain26_2 = 4,
        // ain27_1 = 5,  ain27_2 = 6,
        // ain28_1 = 7,  ain28_2 = 8,
        // ain29_1 = 9,  ain29_2 = 10,
        // ain30_1 = 11, ain30_2 = 12,
        // ain31_1 = 13, ain31_2 = 14,
        // ain32_1 = 15, ain32_2 = 16}
        
        
        //W[] = 2x32
        //{win11 = 1, win12 = 2,  win13 = 3,  win14 = 4,  win15 = 5,  win16 = 6,  win17 = 7,  win18 = 8,
        // win21 = 9, win22 = 10, win23 = 11, win24 = 12, win25 = 13, win26 = 14, win27 = 15, win28 = 16,
        
        // win19 = 1, win1_10 = 2,  win1_11 = 3,  win1_12 = 4,  win1_13 = 5,  win1_14 = 6,  win1_15 = 7,  win1_16 = 8,
        // win29 = 9, win2_10 = 10, win2_11 = 11, win2_12 = 12, win2_13 = 13, win2_14 = 14, win2_15 = 15, win2_16 = 16,
        
        // win1_17 = 1, win1_18 = 2,  win1_19 = 3,  win1_20 = 4,  win1_21 = 5,  win1_22 = 6,  win1_23 = 7,  win1_24 = 8,
        // win2_17 = 9, win2_18 = 10, win2_19 = 11, win2_20 = 12, win2_21 = 13, win2_22 = 14, win2_23 = 15, win2_24 = 16,
        
        // win1_25 = 1, win1_26 = 2,  win1_27 = 3,  win1_28 = 4,  win1_29 = 5,  win1_30 = 6,  win1_31 = 7,  win1_32 = 8,
        // win2_25 = 9, win2_26 = 10, win2_27 = 11, win2_28 = 12, win2_29 = 13, win2_30 = 14, win2_31 = 15, win2_32 = 16,
        
        
        //
        //                                                                  0      0      0      0      0       0       0       ain18
        //                                                                  0      0      0      0      0       0       ain17   ain28
        //                                                                  0      0      0      0      0       ain16   ain27   0
        //                                                                  0      0      0      0      ain15   ain26   0       0
        //                                                                  0      0      0      win14  win25   0       0       0
        //                                                                  0      0      win13  win24  0       0       0       0   
        //                                                                  0      win12  win23  0      0       0       0       0
        //                                                                  win11  win22  0      0      0       0       0       0
        //                                                                  win21  0      0      0      0       0       0       0
        //0      0      0      0      0      0      0      ain11  ain12 
        //0      0      0      0      0      0      ain21  ain22  0
        //0      0      0      0      0      ain31  ain32  0      0
        //0      0      0      0      ain41  ain42  0      0      0
        //0      0      0      ain51  ain52  0      0      0      0
        //0      0      ain61  ain62  0      0      0      0      0      
        //0      ain71  ain72  0      0      0      0      0      0
        //ain81  ain82  0      0      0      0      0      0      0
        
        //ain12 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //win21 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0      
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
       
        win1 = 9; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //ain11 ain22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        //win11 win22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        ain1 = 1; ain2 = 4; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        
        win1 = 1; win2 = 10; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 ain21 ain32 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 win12 win23 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 3; ain3 = 6; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        
        win1 = 0; win2 = 2; win3 = 11; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
      
        #20
        
        //0 0 ain31 ain42 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 win13 win24 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 5; ain4 = 8; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 3; win4 = 12; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 ain41 ain52 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 win14 win25 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 7; ain5 = 10; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 4; win5 = 13; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 ain51 ain62 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 win15 ain26 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 9; ain6 = 12; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 5; win6 = 14; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 ain61 ain72 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 win16 win27 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 11; ain7 = 14; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 6; win7 = 15; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 ain71 ain82    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 win17 win28    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 13; ain8 = 16;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 7; win8 = 16;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 ain81    ain92 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 win18    win29 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 15;
        ain9 = 2; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 8;
        win9 = 9; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    ain91 ain10_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    win19 win2_10 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 1; ain10 = 4; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 1; win10 = 10; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        
        #20
        
        //0 0 0 0 0 0 0 0    0 ain10_1 ain11_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 win1_10 win2_11 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 3; ain11 = 6; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 2; win11 = 11; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 ain11_1 ain12_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 win1_11 win2_12 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 5; ain12 = 8; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 3; win12 = 12; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 ain12_1 ain13_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 win1_12 win2_13 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 7; ain13 = 10; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 4; win13 = 13; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 ain13_1 ain14_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 win1_13 win2_14 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 9; ain14 = 12; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 5; win14 = 14; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 ain14_1 ain15_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 win1_14 win2_15 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 11; ain15 = 14; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 6; win15 = 15; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain15_1 ain16_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_15 win2_16    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 13; ain16 = 16;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
       
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 7; win16 = 16;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
           
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain16_1    ain17_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_16    win2_17 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 15;
        ain17 = 2; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 8;
        win17 = 9; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain17_1 ain18_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_17 win2_18 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 1; ain18 = 4; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 1; win18 = 10; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain18_1 ain19_2 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_18 win2_19 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 3; ain19 = 6; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
      
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 2; win19 = 11; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain19_1 ain20_2 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_19 win2_20 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 5; ain20 = 8; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 3; win20 = 12; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain20_1 ain21_2 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_20 win2_21 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 7; ain21 = 10; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 4; win21 = 13; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain21_1 ain22_2 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_21 win2_22 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 9; ain22 = 12; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
       
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 5; win22 = 14; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain22_1 ain23_2 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_22 win2_23 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 11; ain23 = 14; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 6; win23 = 15; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain23_1 ain24_2    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_23 win2_24    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 13; ain24 = 16;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 7; win24 = 16;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain24_1    ain25_2 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_24    win2_25 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 15;
        ain25 = 2; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 8;
        win25 = 9; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain25_1 ain26_2 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_25 win2_26 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 1; ain26 = 4; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 1; win26 = 10; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain26_1 ain27_2 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_26 win2_27 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 3; ain27 = 6; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 2; win27 = 11; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain27_1 ain28_2 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_27 win2_28 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 5; ain28 = 8; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 3; win28 = 12; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain28_1 ain29_2 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_28 win2_29 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 7; ain29 = 10; ain30 = 0; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 4; win29 = 13; win30 = 0; win31 = 0; win32 = 0;
       
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain29_1 ain30_2 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_29 win2_30 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 9; ain30 = 12; ain31 = 0; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 5; win30 = 14; win31 = 0; win32 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain30_1 ain31_2 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_30 ain2_31 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 11; ain31 = 14; ain32 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 6; win31 = 15; win32 = 0;
      
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain31_2 ain32_2   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain1_31 win2_32   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 13; ain32 = 16;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 7; win32 = 16;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain32_1    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_32    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 15;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 8;
       
        #20
        
        //reset to 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;

        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        
        #3000
        
        $finish; 
        
    end
                
endmodule
