`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 06:07:17 PM
// Design Name: 
// Module Name: mac_array_48x48_tb
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


module mac_array_48x48_tb(
    );
    
    //inputs
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
              ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
              ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
              ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32, 
              ain33, ain34, ain35, ain36, ain37, ain38, ain39, ain40, 
              ain41, ain42, ain43, ain44, ain45, ain46, ain47, ain48;
              
    reg [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
              win9, win10, win11, win12, win13, win14, win15, win16, 
              win17, win18, win19, win20, win21, win22, win23, win24, 
              win25, win26, win27, win28, win29, win30, win31, win32, 
              win33, win34, win35, win36, win37, win38, win39, win40, 
              win41, win42, win43, win44, win45, win46, win47, win48; 
              
    
    //outputs       
    wire [21:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
                sout1_33, sout1_34, sout1_35, sout1_36, sout1_37, sout1_38, sout1_39, sout1_40,
                sout1_41, sout1_42, sout1_43, sout1_44, sout1_45, sout1_46, sout1_47, sout1_48;
    
    wire [21:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
                sout2_33, sout2_34, sout2_35, sout2_36, sout2_37, sout2_38, sout2_39, sout2_40,
                sout2_41, sout2_42, sout2_43, sout2_44, sout2_45, sout2_46, sout2_47, sout2_48;
    
    wire [21:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
                sout3_33, sout3_34, sout3_35, sout3_36, sout3_37, sout3_38, sout3_39, sout3_40,
                sout3_41, sout3_42, sout3_43, sout3_44, sout3_45, sout3_46, sout3_47, sout3_48;
    
    wire [21:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
                sout4_33, sout4_34, sout4_35, sout4_36, sout4_37, sout4_38, sout4_39, sout4_40,
                sout4_41, sout4_42, sout4_43, sout4_44, sout4_45, sout4_46, sout4_47, sout4_48;
    
    
    wire [21:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
                sout5_33, sout5_34, sout5_35, sout5_36, sout5_37, sout5_38, sout5_39, sout5_40,
                sout5_41, sout5_42, sout5_43, sout5_44, sout5_45, sout5_46, sout5_47, sout5_48;
    
    wire [21:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
                sout6_33, sout6_34, sout6_35, sout6_36, sout6_37, sout6_38, sout6_39, sout6_40,
                sout6_41, sout6_42, sout6_43, sout6_44, sout6_45, sout6_46, sout6_47, sout6_48;
    
    wire [21:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
                sout7_33, sout7_34, sout7_35, sout7_36, sout7_37, sout7_38, sout7_39, sout7_40,
                sout7_41, sout7_42, sout7_43, sout7_44, sout7_45, sout7_46, sout7_47, sout7_48; 
    
    wire [21:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
                sout8_33, sout8_34, sout8_35, sout8_36, sout8_37, sout8_38, sout8_39, sout8_40,
                sout8_41, sout8_42, sout8_43, sout8_44, sout8_45, sout8_46, sout8_47, sout8_48;
    
    wire [21:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
                sout9_33, sout9_34, sout9_35, sout9_36, sout9_37, sout9_38, sout9_39, sout9_40,
                sout9_41, sout9_42, sout9_43, sout9_44, sout9_45, sout9_46, sout9_47, sout9_48;
    
    wire [21:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
                sout10_33, sout10_34, sout10_35, sout10_36, sout10_37, sout10_38, sout10_39, sout10_40,
                sout10_41, sout10_42, sout10_43, sout10_44, sout10_45, sout10_46, sout10_47, sout10_48;
    
    wire [21:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
                sout11_33, sout11_34, sout11_35, sout11_36, sout11_37, sout11_38, sout11_39, sout11_40,
                sout11_41, sout11_42, sout11_43, sout11_44, sout11_45, sout11_46, sout11_47, sout11_48;
    
    wire [21:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
                sout12_33, sout12_34, sout12_35, sout12_36, sout12_37, sout12_38, sout12_39, sout12_40,
                sout12_41, sout12_42, sout12_43, sout12_44, sout12_45, sout12_46, sout12_47, sout12_48;
    
    wire [21:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
                sout13_33, sout13_34, sout13_35, sout13_36, sout13_37, sout13_38, sout13_39, sout13_40,
                sout13_41, sout13_42, sout13_43, sout13_44, sout13_45, sout13_46, sout13_47, sout13_48;
    
    wire [21:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
                sout14_33, sout14_34, sout14_35, sout14_36, sout14_37, sout14_38, sout14_39, sout14_40,
                sout14_41, sout14_42, sout14_43, sout14_44, sout14_45, sout14_46, sout14_47, sout14_48;
    
    wire [21:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
                sout15_33, sout15_34, sout15_35, sout15_36, sout15_37, sout15_38, sout15_39, sout15_40,
                sout15_41, sout15_42, sout15_43, sout15_44, sout15_45, sout15_46, sout15_47, sout15_48;
    
    wire [21:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
                sout16_33, sout16_34, sout16_35, sout16_36, sout16_37, sout16_38, sout16_39, sout16_40,
                sout16_41, sout16_42, sout16_43, sout16_44, sout16_45, sout16_46, sout16_47, sout16_48;
    
    wire [21:0] sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
                sout17_33, sout17_34, sout17_35, sout17_36, sout17_37, sout17_38, sout17_39, sout17_40,
                sout17_41, sout17_42, sout17_43, sout17_44, sout17_45, sout17_46, sout17_47, sout17_48;
    
    wire [21:0] sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
                sout18_33, sout18_34, sout18_35, sout18_36, sout18_37, sout18_38, sout18_39, sout18_40,
                sout18_41, sout18_42, sout18_43, sout18_44, sout18_45, sout18_46, sout18_47, sout18_48;
    
    wire [21:0] sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
                sout19_33, sout19_34, sout19_35, sout19_36, sout19_37, sout19_38, sout19_39, sout19_40,
                sout19_41, sout19_42, sout19_43, sout19_44, sout19_45, sout19_46, sout19_47, sout19_48;
    
    wire [21:0] sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
                sout20_33, sout20_34, sout20_35, sout20_36, sout20_37, sout20_38, sout20_39, sout20_40,
                sout20_41, sout20_42, sout20_43, sout20_44, sout20_45, sout20_46, sout20_47, sout20_48;
    
    wire [21:0] sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
                sout21_33, sout21_34, sout21_35, sout21_36, sout21_37, sout21_38, sout21_39, sout21_40,
                sout21_41, sout21_42, sout21_43, sout21_44, sout21_45, sout21_46, sout21_47, sout21_48;
    
    wire [21:0] sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
                sout22_33, sout22_34, sout22_35, sout22_36, sout22_37, sout22_38, sout22_39, sout22_40,
                sout22_41, sout22_42, sout22_43, sout22_44, sout22_45, sout22_46, sout22_47, sout22_48;
    
    wire [21:0] sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
                sout23_33, sout23_34, sout23_35, sout23_36, sout23_37, sout23_38, sout23_39, sout23_40,
                sout23_41, sout23_42, sout23_43, sout23_44, sout23_45, sout23_46, sout23_47, sout23_48;
    
    wire [21:0] sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
                sout24_33, sout24_34, sout24_35, sout24_36, sout24_37, sout24_38, sout24_39, sout24_40,
                sout24_41, sout24_42, sout24_43, sout24_44, sout24_45, sout24_46, sout24_47, sout24_48;
    
    wire [21:0] sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
                sout25_33, sout25_34, sout25_35, sout25_36, sout25_37, sout25_38, sout25_39, sout25_40,
                sout25_41, sout25_42, sout25_43, sout25_44, sout25_45, sout25_46, sout25_47, sout25_48;
    
    wire [21:0] sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
                sout26_33, sout26_34, sout26_35, sout26_36, sout26_37, sout26_38, sout26_39, sout26_40,
                sout26_41, sout26_42, sout26_43, sout26_44, sout26_45, sout26_46, sout26_47, sout26_48; 
    
    wire [21:0] sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
                sout27_33, sout27_34, sout27_35, sout27_36, sout27_37, sout27_38, sout27_39, sout27_40,
                sout27_41, sout27_42, sout27_43, sout27_44, sout27_45, sout27_46, sout27_47, sout27_48;
    
    wire [21:0] sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
                sout28_33, sout28_34, sout28_35, sout28_36, sout28_37, sout28_38, sout28_39, sout28_40,
                sout28_41, sout28_42, sout28_43, sout28_44, sout28_45, sout28_46, sout28_47, sout28_48;
    
    wire [21:0] sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
                sout29_33, sout29_34, sout29_35, sout29_36, sout29_37, sout29_38, sout29_39, sout29_40,
                sout29_41, sout29_42, sout29_43, sout29_44, sout29_45, sout29_46, sout29_47, sout29_48;
    
    wire [21:0] sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
                sout30_33, sout30_34, sout30_35, sout30_36, sout30_37, sout30_38, sout30_39, sout30_40,
                sout30_41, sout30_42, sout30_43, sout30_44, sout30_45, sout30_46, sout30_47, sout30_48;
    
    wire [21:0] sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
                sout31_33, sout31_34, sout31_35, sout31_36, sout31_37, sout31_38, sout31_39, sout31_40,
                sout31_41, sout31_42, sout31_43, sout31_44, sout31_45, sout31_46, sout31_47, sout31_48;
    
    wire [21:0] sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32,
                sout32_33, sout32_34, sout32_35, sout32_36, sout32_37, sout32_38, sout32_39, sout32_40,
                sout32_41, sout32_42, sout32_43, sout32_44, sout32_45, sout32_46, sout32_47, sout32_48;
    
    wire [21:0] sout33_1, sout33_2, sout33_3, sout33_4, sout33_5, sout33_6, sout33_7, sout33_8,
                sout33_9, sout33_10, sout33_11, sout33_12, sout33_13, sout33_14, sout33_15, sout33_16,
                sout33_17, sout33_18, sout33_19, sout33_20, sout33_21, sout33_22, sout33_23, sout33_24, 
                sout33_25, sout33_26, sout33_27, sout33_28, sout33_29, sout33_30, sout33_31, sout33_32,
                sout33_33, sout33_34, sout33_35, sout33_36, sout33_37, sout33_38, sout33_39, sout33_40,
                sout33_41, sout33_42, sout33_43, sout33_44, sout33_45, sout33_46, sout33_47, sout33_48;
                    
    wire [21:0] sout34_1, sout34_2, sout34_3, sout34_4, sout34_5, sout34_6, sout34_7, sout34_8,
                sout34_9, sout34_10, sout34_11, sout34_12, sout34_13, sout34_14, sout34_15, sout34_16,
                sout34_17, sout34_18, sout34_19, sout34_20, sout34_21, sout34_22, sout34_23, sout34_24, 
                sout34_25, sout34_26, sout34_27, sout34_28, sout34_29, sout34_30, sout34_31, sout34_32,
                sout34_33, sout34_34, sout34_35, sout34_36, sout34_37, sout34_38, sout34_39, sout34_40,
                sout34_41, sout34_42, sout34_43, sout34_44, sout34_45, sout34_46, sout34_47, sout34_48;
                  
    wire [21:0] sout35_1, sout35_2, sout35_3, sout35_4, sout35_5, sout35_6, sout35_7, sout35_8,
                sout35_9, sout35_10, sout35_11, sout35_12, sout35_13, sout35_14, sout35_15, sout35_16,
                sout35_17, sout35_18, sout35_19, sout35_20, sout35_21, sout35_22, sout35_23, sout35_24, 
                sout35_25, sout35_26, sout35_27, sout35_28, sout35_29, sout35_30, sout35_31, sout35_32,
                sout35_33, sout35_34, sout35_35, sout35_36, sout35_37, sout35_38, sout35_39, sout35_40,
                sout35_41, sout35_42, sout35_43, sout35_44, sout35_45, sout35_46, sout35_47, sout35_48;
                  
    wire [21:0] sout36_1, sout36_2, sout36_3, sout36_4, sout36_5, sout36_6, sout36_7, sout36_8,
                sout36_9, sout36_10, sout36_11, sout36_12, sout36_13, sout36_14, sout36_15, sout36_16,
                sout36_17, sout36_18, sout36_19, sout36_20, sout36_21, sout36_22, sout36_23, sout36_24, 
                sout36_25, sout36_26, sout36_27, sout36_28, sout36_29, sout36_30, sout36_31, sout36_32,
                sout36_33, sout36_34, sout36_35, sout36_36, sout36_37, sout36_38, sout36_39, sout36_40,
                sout36_41, sout36_42, sout36_43, sout36_44, sout36_45, sout36_46, sout36_47, sout36_48;
                  
    wire [21:0] sout37_1, sout37_2, sout37_3, sout37_4, sout37_5, sout37_6, sout37_7, sout37_8,
                sout37_9, sout37_10, sout37_11, sout37_12, sout37_13, sout37_14, sout37_15, sout37_16,
                sout37_17, sout37_18, sout37_19, sout37_20, sout37_21, sout37_22, sout37_23, sout37_24, 
                sout37_25, sout37_26, sout37_27, sout37_28, sout37_29, sout37_30, sout37_31, sout37_32,
                sout37_33, sout37_34, sout37_35, sout37_36, sout37_37, sout37_38, sout37_39, sout37_40,
                sout37_41, sout37_42, sout37_43, sout37_44, sout37_45, sout37_46, sout37_47, sout37_48;
                  
    wire [21:0] sout38_1, sout38_2, sout38_3, sout38_4, sout38_5, sout38_6, sout38_7, sout38_8,
                sout38_9, sout38_10, sout38_11, sout38_12, sout38_13, sout38_14, sout38_15, sout38_16,
                sout38_17, sout38_18, sout38_19, sout38_20, sout38_21, sout38_22, sout38_23, sout38_24, 
                sout38_25, sout38_26, sout38_27, sout38_28, sout38_29, sout38_30, sout38_31, sout38_32,
                sout38_33, sout38_34, sout38_35, sout38_36, sout38_37, sout38_38, sout38_39, sout38_40,
                sout38_41, sout38_42, sout38_43, sout38_44, sout38_45, sout38_46, sout38_47, sout38_48;
                  
    wire [21:0] sout39_1, sout39_2, sout39_3, sout39_4, sout39_5, sout39_6, sout39_7, sout39_8,
                sout39_9, sout39_10, sout39_11, sout39_12, sout39_13, sout39_14, sout39_15, sout39_16,
                sout39_17, sout39_18, sout39_19, sout39_20, sout39_21, sout39_22, sout39_23, sout39_24, 
                sout39_25, sout39_26, sout39_27, sout39_28, sout39_29, sout39_30, sout39_31, sout39_32,
                sout39_33, sout39_34, sout39_35, sout39_36, sout39_37, sout39_38, sout39_39, sout39_40,
                sout39_41, sout39_42, sout39_43, sout39_44, sout39_45, sout39_46, sout39_47, sout39_48;
                  
    wire [21:0] sout40_1, sout40_2, sout40_3, sout40_4, sout40_5, sout40_6, sout40_7, sout40_8,
                sout40_9, sout40_10, sout40_11, sout40_12, sout40_13, sout40_14, sout40_15, sout40_16,
                sout40_17, sout40_18, sout40_19, sout40_20, sout40_21, sout40_22, sout40_23, sout40_24, 
                sout40_25, sout40_26, sout40_27, sout40_28, sout40_29, sout40_30, sout40_31, sout40_32,
                sout40_33, sout40_34, sout40_35, sout40_36, sout40_37, sout40_38, sout40_39, sout40_40,
                sout40_41, sout40_42, sout40_43, sout40_44, sout40_45, sout40_46, sout40_47, sout40_48;
    
    wire [21:0] sout41_1, sout41_2, sout41_3, sout41_4, sout41_5, sout41_6, sout41_7, sout41_8,
                sout41_9, sout41_10, sout41_11, sout41_12, sout41_13, sout41_14, sout41_15, sout41_16,
                sout41_17, sout41_18, sout41_19, sout41_20, sout41_21, sout41_22, sout41_23, sout41_24, 
                sout41_25, sout41_26, sout41_27, sout41_28, sout41_29, sout41_30, sout41_31, sout41_32,
                sout41_33, sout41_34, sout41_35, sout41_36, sout41_37, sout41_38, sout41_39, sout41_40,
                sout41_41, sout41_42, sout41_43, sout41_44, sout41_45, sout41_46, sout41_47, sout41_48;
                  
    wire [21:0] sout42_1, sout42_2, sout42_3, sout42_4, sout42_5, sout42_6, sout42_7, sout42_8,
                sout42_9, sout42_10, sout42_11, sout42_12, sout42_13, sout42_14, sout42_15, sout42_16,
                sout42_17, sout42_18, sout42_19, sout42_20, sout42_21, sout42_22, sout42_23, sout42_24, 
                sout42_25, sout42_26, sout42_27, sout42_28, sout42_29, sout42_30, sout42_31, sout42_32,
                sout42_33, sout42_34, sout42_35, sout42_36, sout42_37, sout42_38, sout42_39, sout42_40,
                sout42_41, sout42_42, sout42_43, sout42_44, sout42_45, sout42_46, sout42_47, sout42_48;
                        
    wire [21:0] sout43_1, sout43_2, sout43_3, sout43_4, sout43_5, sout43_6, sout43_7, sout43_8,
                sout43_9, sout43_10, sout43_11, sout43_12, sout43_13, sout43_14, sout43_15, sout43_16,
                sout43_17, sout43_18, sout43_19, sout43_20, sout43_21, sout43_22, sout43_23, sout43_24, 
                sout43_25, sout43_26, sout43_27, sout43_28, sout43_29, sout43_30, sout43_31, sout43_32,
                sout43_33, sout43_34, sout43_35, sout43_36, sout43_37, sout43_38, sout43_39, sout43_40,
                sout43_41, sout43_42, sout43_43, sout43_44, sout43_45, sout43_46, sout43_47, sout43_48;
                  
    wire [21:0] sout44_1, sout44_2, sout44_3, sout44_4, sout44_5, sout44_6, sout44_7, sout44_8,
                sout44_9, sout44_10, sout44_11, sout44_12, sout44_13, sout44_14, sout44_15, sout44_16,
                sout44_17, sout44_18, sout44_19, sout44_20, sout44_21, sout44_22, sout44_23, sout44_24, 
                sout44_25, sout44_26, sout44_27, sout44_28, sout44_29, sout44_30, sout44_31, sout44_32,
                sout44_33, sout44_34, sout44_35, sout44_36, sout44_37, sout44_38, sout44_39, sout44_40,
                sout44_41, sout44_42, sout44_43, sout44_44, sout44_45, sout44_46, sout44_47, sout44_48;
                  
    wire [21:0] sout45_1, sout45_2, sout45_3, sout45_4, sout45_5, sout45_6, sout45_7, sout45_8,
                sout45_9, sout45_10, sout45_11, sout45_12, sout45_13, sout45_14, sout45_15, sout45_16,
                sout45_17, sout45_18, sout45_19, sout45_20, sout45_21, sout45_22, sout45_23, sout45_24, 
                sout45_25, sout45_26, sout45_27, sout45_28, sout45_29, sout45_30, sout45_31, sout45_32,
                sout45_33, sout45_34, sout45_35, sout45_36, sout45_37, sout45_38, sout45_39, sout45_40,
                sout45_41, sout45_42, sout45_43, sout45_44, sout45_45, sout45_46, sout45_47, sout45_48;
                  
    wire [21:0] sout46_1, sout46_2, sout46_3, sout46_4, sout46_5, sout46_6, sout46_7, sout46_8,
                sout46_9, sout46_10, sout46_11, sout46_12, sout46_13, sout46_14, sout46_15, sout46_16,
                sout46_17, sout46_18, sout46_19, sout46_20, sout46_21, sout46_22, sout46_23, sout46_24, 
                sout46_25, sout46_26, sout46_27, sout46_28, sout46_29, sout46_30, sout46_31, sout46_32,
                sout46_33, sout46_34, sout46_35, sout46_36, sout46_37, sout46_38, sout46_39, sout46_40,
                sout46_41, sout46_42, sout46_43, sout46_44, sout46_45, sout46_46, sout46_47, sout46_48;
                 
    wire [21:0] sout47_1, sout47_2, sout47_3, sout47_4, sout47_5, sout47_6, sout47_7, sout47_8,
                sout47_9, sout47_10, sout47_11, sout47_12, sout47_13, sout47_14, sout47_15, sout47_16,
                sout47_17, sout47_18, sout47_19, sout47_20, sout47_21, sout47_22, sout47_23, sout47_24, 
                sout47_25, sout47_26, sout47_27, sout47_28, sout47_29, sout47_30, sout47_31, sout47_32,
                sout47_33, sout47_34, sout47_35, sout47_36, sout47_37, sout47_38, sout47_39, sout47_40,
                sout47_41, sout47_42, sout47_43, sout47_44, sout47_45, sout47_46, sout47_47, sout47_48;
                  
    wire [21:0] sout48_1, sout48_2, sout48_3, sout48_4, sout48_5, sout48_6, sout48_7, sout48_8,
                sout48_9, sout48_10, sout48_11, sout48_12, sout48_13, sout48_14, sout48_15, sout48_16,
                sout48_17, sout48_18, sout48_19, sout48_20, sout48_21, sout48_22, sout48_23, sout48_24, 
                sout48_25, sout48_26, sout48_27, sout48_28, sout48_29, sout48_30, sout48_31, sout48_32,
                sout48_33, sout48_34, sout48_35, sout48_36, sout48_37, sout48_38, sout48_39, sout48_40,
                sout48_41, sout48_42, sout48_43, sout48_44, sout48_45, sout48_46, sout48_47, sout48_48;
                
             
    mac_array_48x48 DUT(clk, rst,
                        ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
                        ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
                        ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
                        ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32, 
                        ain33, ain34, ain35, ain36, ain37, ain38, ain39, ain40, 
                        ain41, ain42, ain43, ain44, ain45, ain46, ain47, ain48,
                        
                        win1, win2, win3, win4, win5, win6, win7, win8,
                        win9, win10, win11, win12, win13, win14, win15, win16, 
                        win17, win18, win19, win20, win21, win22, win23, win24, 
                        win25, win26, win27, win28, win29, win30, win31, win32, 
                        win33, win34, win35, win36, win37, win38, win39, win40, 
                        win41, win42, win43, win44, win45, win46, win47, win48,
                        
                        sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                        sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                        sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                        sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
                        sout1_33, sout1_34, sout1_35, sout1_36, sout1_37, sout1_38, sout1_39, sout1_40,
                        sout1_41, sout1_42, sout1_43, sout1_44, sout1_45, sout1_46, sout1_47, sout1_48,
                        
                        sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                        sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                        sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                        sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
                        sout2_33, sout2_34, sout2_35, sout2_36, sout2_37, sout2_38, sout2_39, sout2_40,
                        sout2_41, sout2_42, sout2_43, sout2_44, sout2_45, sout2_46, sout2_47, sout2_48,
                        
                        sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                        sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                        sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                        sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
                        sout3_33, sout3_34, sout3_35, sout3_36, sout3_37, sout3_38, sout3_39, sout3_40,
                        sout3_41, sout3_42, sout3_43, sout3_44, sout3_45, sout3_46, sout3_47, sout3_48,
                        
                        sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                        sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                        sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                        sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
                        sout4_33, sout4_34, sout4_35, sout4_36, sout4_37, sout4_38, sout4_39, sout4_40,
                        sout4_41, sout4_42, sout4_43, sout4_44, sout4_45, sout4_46, sout4_47, sout4_48,
                       
                        sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                        sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                        sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                        sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
                        sout5_33, sout5_34, sout5_35, sout5_36, sout5_37, sout5_38, sout5_39, sout5_40,
                        sout5_41, sout5_42, sout5_43, sout5_44, sout5_45, sout5_46, sout5_47, sout5_48,
                        
                        sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                        sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                        sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                        sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
                        sout6_33, sout6_34, sout6_35, sout6_36, sout6_37, sout6_38, sout6_39, sout6_40,
                        sout6_41, sout6_42, sout6_43, sout6_44, sout6_45, sout6_46, sout6_47, sout6_48,
                        
                        sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                        sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                        sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                        sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
                        sout7_33, sout7_34, sout7_35, sout7_36, sout7_37, sout7_38, sout7_39, sout7_40,
                        sout7_41, sout7_42, sout7_43, sout7_44, sout7_45, sout7_46, sout7_47, sout7_48,
                        
                        sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                        sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                        sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                        sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
                        sout8_33, sout8_34, sout8_35, sout8_36, sout8_37, sout8_38, sout8_39, sout8_40,
                        sout8_41, sout8_42, sout8_43, sout8_44, sout8_45, sout8_46, sout8_47, sout8_48,
                        
                        sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                        sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                        sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                        sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
                        sout9_33, sout9_34, sout9_35, sout9_36, sout9_37, sout9_38, sout9_39, sout9_40,
                        sout9_41, sout9_42, sout9_43, sout9_44, sout9_45, sout9_46, sout9_47, sout9_48,
                        
                        sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                        sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                        sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                        sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
                        sout10_33, sout10_34, sout10_35, sout10_36, sout10_37, sout10_38, sout10_39, sout10_40,
                        sout10_41, sout10_42, sout10_43, sout10_44, sout10_45, sout10_46, sout10_47, sout10_48,
                        
                        sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                        sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                        sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                        sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
                        sout11_33, sout11_34, sout11_35, sout11_36, sout11_37, sout11_38, sout11_39, sout11_40,
                        sout11_41, sout11_42, sout11_43, sout11_44, sout11_45, sout11_46, sout11_47, sout11_48,
                        
                        sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                        sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                        sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                        sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
                        sout12_33, sout12_34, sout12_35, sout12_36, sout12_37, sout12_38, sout12_39, sout12_40,
                        sout12_41, sout12_42, sout12_43, sout12_44, sout12_45, sout12_46, sout12_47, sout12_48,
                        
                        sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                        sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                        sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                        sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
                        sout13_33, sout13_34, sout13_35, sout13_36, sout13_37, sout13_38, sout13_39, sout13_40,
                        sout13_41, sout13_42, sout13_43, sout13_44, sout13_45, sout13_46, sout13_47, sout13_48,
                        
                        sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                        sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                        sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                        sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
                        sout14_33, sout14_34, sout14_35, sout14_36, sout14_37, sout14_38, sout14_39, sout14_40,
                        sout14_41, sout14_42, sout14_43, sout14_44, sout14_45, sout14_46, sout14_47, sout14_48,
                        
                        sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                        sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                        sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                        sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
                        sout15_33, sout15_34, sout15_35, sout15_36, sout15_37, sout15_38, sout15_39, sout15_40,
                        sout15_41, sout15_42, sout15_43, sout15_44, sout15_45, sout15_46, sout15_47, sout15_48,
                        
                        sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                        sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                        sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                        sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
                        sout16_33, sout16_34, sout16_35, sout16_36, sout16_37, sout16_38, sout16_39, sout16_40,
                        sout16_41, sout16_42, sout16_43, sout16_44, sout16_45, sout16_46, sout16_47, sout16_48,
                        
                        sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                        sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                        sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                        sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
                        sout17_33, sout17_34, sout17_35, sout17_36, sout17_37, sout17_38, sout17_39, sout17_40,
                        sout17_41, sout17_42, sout17_43, sout17_44, sout17_45, sout17_46, sout17_47, sout17_48,
                        
                        sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                        sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                        sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                        sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
                        sout18_33, sout18_34, sout18_35, sout18_36, sout18_37, sout18_38, sout18_39, sout18_40,
                        sout18_41, sout18_42, sout18_43, sout18_44, sout18_45, sout18_46, sout18_47, sout18_48,
                        
                        sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                        sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                        sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                        sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
                        sout19_33, sout19_34, sout19_35, sout19_36, sout19_37, sout19_38, sout19_39, sout19_40,
                        sout19_41, sout19_42, sout19_43, sout19_44, sout19_45, sout19_46, sout19_47, sout19_48,
                        
                        sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                        sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                        sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                        sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
                        sout20_33, sout20_34, sout20_35, sout20_36, sout20_37, sout20_38, sout20_39, sout20_40,
                        sout20_41, sout20_42, sout20_43, sout20_44, sout20_45, sout20_46, sout20_47, sout20_48,
                        
                        sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                        sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                        sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                        sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
                        sout21_33, sout21_34, sout21_35, sout21_36, sout21_37, sout21_38, sout21_39, sout21_40,
                        sout21_41, sout21_42, sout21_43, sout21_44, sout21_45, sout21_46, sout21_47, sout21_48,
                        
                        sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                        sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                        sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                        sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
                        sout22_33, sout22_34, sout22_35, sout22_36, sout22_37, sout22_38, sout22_39, sout22_40,
                        sout22_41, sout22_42, sout22_43, sout22_44, sout22_45, sout22_46, sout22_47, sout22_48,
                        
                        sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                        sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                        sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                        sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
                        sout23_33, sout23_34, sout23_35, sout23_36, sout23_37, sout23_38, sout23_39, sout23_40,
                        sout23_41, sout23_42, sout23_43, sout23_44, sout23_45, sout23_46, sout23_47, sout23_48,
                        
                        sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                        sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                        sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                        sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
                        sout24_33, sout24_34, sout24_35, sout24_36, sout24_37, sout24_38, sout24_39, sout24_40,
                        sout24_41, sout24_42, sout24_43, sout24_44, sout24_45, sout24_46, sout24_47, sout24_48,
                       
                        sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                        sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                        sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                        sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
                        sout25_33, sout25_34, sout25_35, sout25_36, sout25_37, sout25_38, sout25_39, sout25_40,
                        sout25_41, sout25_42, sout25_43, sout25_44, sout25_45, sout25_46, sout25_47, sout25_48,
                        
                        sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                        sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                        sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                        sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
                        sout26_33, sout26_34, sout26_35, sout26_36, sout26_37, sout26_38, sout26_39, sout26_40,
                        sout26_41, sout26_42, sout26_43, sout26_44, sout26_45, sout26_46, sout26_47, sout26_48,
                        
                        sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                        sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                        sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                        sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
                        sout27_33, sout27_34, sout27_35, sout27_36, sout27_37, sout27_38, sout27_39, sout27_40,
                        sout27_41, sout27_42, sout27_43, sout27_44, sout27_45, sout27_46, sout27_47, sout27_48,
                        
                        sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                        sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                        sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                        sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
                        sout28_33, sout28_34, sout28_35, sout28_36, sout28_37, sout28_38, sout28_39, sout28_40,
                        sout28_41, sout28_42, sout28_43, sout28_44, sout28_45, sout28_46, sout28_47, sout28_48,
                        
                        sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                        sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                        sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                        sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
                        sout29_33, sout29_34, sout29_35, sout29_36, sout29_37, sout29_38, sout29_39, sout29_40,
                        sout29_41, sout29_42, sout29_43, sout29_44, sout29_45, sout29_46, sout29_47, sout29_48,
                        
                        sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                        sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                        sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                        sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
                        sout30_33, sout30_34, sout30_35, sout30_36, sout30_37, sout30_38, sout30_39, sout30_40,
                        sout30_41, sout30_42, sout30_43, sout30_44, sout30_45, sout30_46, sout30_47, sout30_48,
                        
                        sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                        sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                        sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                        sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
                        sout31_33, sout31_34, sout31_35, sout31_36, sout31_37, sout31_38, sout31_39, sout31_40,
                        sout31_41, sout31_42, sout31_43, sout31_44, sout31_45, sout31_46, sout31_47, sout31_48,
                        
                        sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                        sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                        sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                        sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32,
                        sout32_33, sout32_34, sout32_35, sout32_36, sout32_37, sout32_38, sout32_39, sout32_40,
                        sout32_41, sout32_42, sout32_43, sout32_44, sout32_45, sout32_46, sout32_47, sout32_48,
                        
                        sout33_1, sout33_2, sout33_3, sout33_4, sout33_5, sout33_6, sout33_7, sout33_8,
                        sout33_9, sout33_10, sout33_11, sout33_12, sout33_13, sout33_14, sout33_15, sout33_16,
                        sout33_17, sout33_18, sout33_19, sout33_20, sout33_21, sout33_22, sout33_23, sout33_24, 
                        sout33_25, sout33_26, sout33_27, sout33_28, sout33_29, sout33_30, sout33_31, sout33_32,
                        sout33_33, sout33_34, sout33_35, sout33_36, sout33_37, sout33_38, sout33_39, sout33_40,
                        sout33_41, sout33_42, sout33_43, sout33_44, sout33_45, sout33_46, sout33_47, sout33_48,
                        
                        sout34_1, sout34_2, sout34_3, sout34_4, sout34_5, sout34_6, sout34_7, sout34_8,
                        sout34_9, sout34_10, sout34_11, sout34_12, sout34_13, sout34_14, sout34_15, sout34_16,
                        sout34_17, sout34_18, sout34_19, sout34_20, sout34_21, sout34_22, sout34_23, sout34_24, 
                        sout34_25, sout34_26, sout34_27, sout34_28, sout34_29, sout34_30, sout34_31, sout34_32,
                        sout34_33, sout34_34, sout34_35, sout34_36, sout34_37, sout34_38, sout34_39, sout34_40,
                        sout34_41, sout34_42, sout34_43, sout34_44, sout34_45, sout34_46, sout34_47, sout34_48,
                        
                        sout35_1, sout35_2, sout35_3, sout35_4, sout35_5, sout35_6, sout35_7, sout35_8,
                        sout35_9, sout35_10, sout35_11, sout35_12, sout35_13, sout35_14, sout35_15, sout35_16,
                        sout35_17, sout35_18, sout35_19, sout35_20, sout35_21, sout35_22, sout35_23, sout35_24, 
                        sout35_25, sout35_26, sout35_27, sout35_28, sout35_29, sout35_30, sout35_31, sout35_32,
                        sout35_33, sout35_34, sout35_35, sout35_36, sout35_37, sout35_38, sout35_39, sout35_40,
                        sout35_41, sout35_42, sout35_43, sout35_44, sout35_45, sout35_46, sout35_47, sout35_48,
                        
                        sout36_1, sout36_2, sout36_3, sout36_4, sout36_5, sout36_6, sout36_7, sout36_8,
                        sout36_9, sout36_10, sout36_11, sout36_12, sout36_13, sout36_14, sout36_15, sout36_16,
                        sout36_17, sout36_18, sout36_19, sout36_20, sout36_21, sout36_22, sout36_23, sout36_24, 
                        sout36_25, sout36_26, sout36_27, sout36_28, sout36_29, sout36_30, sout36_31, sout36_32,
                        sout36_33, sout36_34, sout36_35, sout36_36, sout36_37, sout36_38, sout36_39, sout36_40,
                        sout36_41, sout36_42, sout36_43, sout36_44, sout36_45, sout36_46, sout36_47, sout36_48,
                        
                        sout37_1, sout37_2, sout37_3, sout37_4, sout37_5, sout37_6, sout37_7, sout37_8,
                        sout37_9, sout37_10, sout37_11, sout37_12, sout37_13, sout37_14, sout37_15, sout37_16,
                        sout37_17, sout37_18, sout37_19, sout37_20, sout37_21, sout37_22, sout37_23, sout37_24, 
                        sout37_25, sout37_26, sout37_27, sout37_28, sout37_29, sout37_30, sout37_31, sout37_32,
                        sout37_33, sout37_34, sout37_35, sout37_36, sout37_37, sout37_38, sout37_39, sout37_40,
                        sout37_41, sout37_42, sout37_43, sout37_44, sout37_45, sout37_46, sout37_47, sout37_48,
                        
                        sout38_1, sout38_2, sout38_3, sout38_4, sout38_5, sout38_6, sout38_7, sout38_8,
                        sout38_9, sout38_10, sout38_11, sout38_12, sout38_13, sout38_14, sout38_15, sout38_16,
                        sout38_17, sout38_18, sout38_19, sout38_20, sout38_21, sout38_22, sout38_23, sout38_24, 
                        sout38_25, sout38_26, sout38_27, sout38_28, sout38_29, sout38_30, sout38_31, sout38_32,
                        sout38_33, sout38_34, sout38_35, sout38_36, sout38_37, sout38_38, sout38_39, sout38_40,
                        sout38_41, sout38_42, sout38_43, sout38_44, sout38_45, sout38_46, sout38_47, sout38_48,
                        
                        sout39_1, sout39_2, sout39_3, sout39_4, sout39_5, sout39_6, sout39_7, sout39_8,
                        sout39_9, sout39_10, sout39_11, sout39_12, sout39_13, sout39_14, sout39_15, sout39_16,
                        sout39_17, sout39_18, sout39_19, sout39_20, sout39_21, sout39_22, sout39_23, sout39_24, 
                        sout39_25, sout39_26, sout39_27, sout39_28, sout39_29, sout39_30, sout39_31, sout39_32,
                        sout39_33, sout39_34, sout39_35, sout39_36, sout39_37, sout39_38, sout39_39, sout39_40,
                        sout39_41, sout39_42, sout39_43, sout39_44, sout39_45, sout39_46, sout39_47, sout39_48,
                        
                        sout40_1, sout40_2, sout40_3, sout40_4, sout40_5, sout40_6, sout40_7, sout40_8,
                        sout40_9, sout40_10, sout40_11, sout40_12, sout40_13, sout40_14, sout40_15, sout40_16,
                        sout40_17, sout40_18, sout40_19, sout40_20, sout40_21, sout40_22, sout40_23, sout40_24, 
                        sout40_25, sout40_26, sout40_27, sout40_28, sout40_29, sout40_30, sout40_31, sout40_32,
                        sout40_33, sout40_34, sout40_35, sout40_36, sout40_37, sout40_38, sout40_39, sout40_40,
                        sout40_41, sout40_42, sout40_43, sout40_44, sout40_45, sout40_46, sout40_47, sout40_48,
                        
                        sout41_1, sout41_2, sout41_3, sout41_4, sout41_5, sout41_6, sout41_7, sout41_8,
                        sout41_9, sout41_10, sout41_11, sout41_12, sout41_13, sout41_14, sout41_15, sout41_16,
                        sout41_17, sout41_18, sout41_19, sout41_20, sout41_21, sout41_22, sout41_23, sout41_24, 
                        sout41_25, sout41_26, sout41_27, sout41_28, sout41_29, sout41_30, sout41_31, sout41_32,
                        sout41_33, sout41_34, sout41_35, sout41_36, sout41_37, sout41_38, sout41_39, sout41_40,
                        sout41_41, sout41_42, sout41_43, sout41_44, sout41_45, sout41_46, sout41_47, sout41_48,
                        
                        sout42_1, sout42_2, sout42_3, sout42_4, sout42_5, sout42_6, sout42_7, sout42_8,
                        sout42_9, sout42_10, sout42_11, sout42_12, sout42_13, sout42_14, sout42_15, sout42_16,
                        sout42_17, sout42_18, sout42_19, sout42_20, sout42_21, sout42_22, sout42_23, sout42_24, 
                        sout42_25, sout42_26, sout42_27, sout42_28, sout42_29, sout42_30, sout42_31, sout42_32,
                        sout42_33, sout42_34, sout42_35, sout42_36, sout42_37, sout42_38, sout42_39, sout42_40,
                        sout42_41, sout42_42, sout42_43, sout42_44, sout42_45, sout42_46, sout42_47, sout42_48,
                        
                        sout43_1, sout43_2, sout43_3, sout43_4, sout43_5, sout43_6, sout43_7, sout43_8,
                        sout43_9, sout43_10, sout43_11, sout43_12, sout43_13, sout43_14, sout43_15, sout43_16,
                        sout43_17, sout43_18, sout43_19, sout43_20, sout43_21, sout43_22, sout43_23, sout43_24, 
                        sout43_25, sout43_26, sout43_27, sout43_28, sout43_29, sout43_30, sout43_31, sout43_32,
                        sout43_33, sout43_34, sout43_35, sout43_36, sout43_37, sout43_38, sout43_39, sout43_40,
                        sout43_41, sout43_42, sout43_43, sout43_44, sout43_45, sout43_46, sout43_47, sout43_48,
                        
                        sout44_1, sout44_2, sout44_3, sout44_4, sout44_5, sout44_6, sout44_7, sout44_8,
                        sout44_9, sout44_10, sout44_11, sout44_12, sout44_13, sout44_14, sout44_15, sout44_16,
                        sout44_17, sout44_18, sout44_19, sout44_20, sout44_21, sout44_22, sout44_23, sout44_24, 
                        sout44_25, sout44_26, sout44_27, sout44_28, sout44_29, sout44_30, sout44_31, sout44_32,
                        sout44_33, sout44_34, sout44_35, sout44_36, sout44_37, sout44_38, sout44_39, sout44_40,
                        sout44_41, sout44_42, sout44_43, sout44_44, sout44_45, sout44_46, sout44_47, sout44_48,
                        
                        sout45_1, sout45_2, sout45_3, sout45_4, sout45_5, sout45_6, sout45_7, sout45_8,
                        sout45_9, sout45_10, sout45_11, sout45_12, sout45_13, sout45_14, sout45_15, sout45_16,
                        sout45_17, sout45_18, sout45_19, sout45_20, sout45_21, sout45_22, sout45_23, sout45_24, 
                        sout45_25, sout45_26, sout45_27, sout45_28, sout45_29, sout45_30, sout45_31, sout45_32,
                        sout45_33, sout45_34, sout45_35, sout45_36, sout45_37, sout45_38, sout45_39, sout45_40,
                        sout45_41, sout45_42, sout45_43, sout45_44, sout45_45, sout45_46, sout45_47, sout45_48,
                        
                        sout46_1, sout46_2, sout46_3, sout46_4, sout46_5, sout46_6, sout46_7, sout46_8,
                        sout46_9, sout46_10, sout46_11, sout46_12, sout46_13, sout46_14, sout46_15, sout46_16,
                        sout46_17, sout46_18, sout46_19, sout46_20, sout46_21, sout46_22, sout46_23, sout46_24, 
                        sout46_25, sout46_26, sout46_27, sout46_28, sout46_29, sout46_30, sout46_31, sout46_32,
                        sout46_33, sout46_34, sout46_35, sout46_36, sout46_37, sout46_38, sout46_39, sout46_40,
                        sout46_41, sout46_42, sout46_43, sout46_44, sout46_45, sout46_46, sout46_47, sout46_48,
                        
                        sout47_1, sout47_2, sout47_3, sout47_4, sout47_5, sout47_6, sout47_7, sout47_8,
                        sout47_9, sout47_10, sout47_11, sout47_12, sout47_13, sout47_14, sout47_15, sout47_16,
                        sout47_17, sout47_18, sout47_19, sout47_20, sout47_21, sout47_22, sout47_23, sout47_24, 
                        sout47_25, sout47_26, sout47_27, sout47_28, sout47_29, sout47_30, sout47_31, sout47_32,
                        sout47_33, sout47_34, sout47_35, sout47_36, sout47_37, sout47_38, sout47_39, sout47_40,
                        sout47_41, sout47_42, sout47_43, sout47_44, sout47_45, sout47_46, sout47_47, sout47_48,
                        
                        sout48_1, sout48_2, sout48_3, sout48_4, sout48_5, sout48_6, sout48_7, sout48_8,
                        sout48_9, sout48_10, sout48_11, sout48_12, sout48_13, sout48_14, sout48_15, sout48_16,
                        sout48_17, sout48_18, sout48_19, sout48_20, sout48_21, sout48_22, sout48_23, sout48_24, 
                        sout48_25, sout48_26, sout48_27, sout48_28, sout48_29, sout48_30, sout48_31, sout48_32,
                        sout48_33, sout48_34, sout48_35, sout48_36, sout48_37, sout48_38, sout48_39, sout48_40,
                        sout48_41, sout48_42, sout48_43, sout48_44, sout48_45, sout48_46, sout48_47, sout48_48
                        
                       
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
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        rst = 0;
        
        //inputs
        
        //A[] = 64x2
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
        // ain32_1 = 15, ain32_2 = 16,
        // ain33_1 = 1,  ain33_2 = 2,
        // ain34_1 = 3,  ain34_2 = 4,
        // ain35_1 = 5,  ain35_2 = 6,
        // ain36_1 = 7,  ain36_2 = 8,
        // ain37_1 = 9,  ain37_2 = 10,
        // ain38_1 = 11, ain38_2 = 12,
        // ain39_1 = 13, ain39_2 = 14,
        // ain40_1 = 15, ain40_2 = 16,
        // ain41_1 = 1,  ain41_2 = 2,
        // ain42_1 = 3,  ain42_2 = 4,
        // ain43_1 = 5,  ain43_2 = 6,
        // ain44_1 = 7,  ain44_2 = 8,
        // ain45_1 = 9,  ain45_2 = 10,
        // ain46_1 = 11, ain46_2 = 12,
        // ain47_1 = 13, ain47_2 = 14,
        // ain48_1 = 15, ain48_2 = 16,
       
       
        //W[] = 2x64
        //{win11 = 1, win12 = 2,  win13 = 3,  win14 = 4,  win15 = 5,  win16 = 6,  win17 = 7,  win18 = 8,
        // win21 = 9, win22 = 10, win23 = 11, win24 = 12, win25 = 13, win26 = 14, win27 = 15, win28 = 16,
        
        // win19 = 1, win1_10 = 2,  win1_11 = 3,  win1_12 = 4,  win1_13 = 5,  win1_14 = 6,  win1_15 = 7,  win1_16 = 8,
        // win29 = 9, win2_10 = 10, win2_11 = 11, win2_12 = 12, win2_13 = 13, win2_14 = 14, win2_15 = 15, win2_16 = 16,
        
        // win1_17 = 1, win1_18 = 2,  win1_19 = 3,  win1_20 = 4,  win1_21 = 5,  win1_22 = 6,  win1_23 = 7,  win1_24 = 8,
        // win2_17 = 9, win2_18 = 10, win2_19 = 11, win2_20 = 12, win2_21 = 13, win2_22 = 14, win2_23 = 15, win2_24 = 16,
        
        // win1_25 = 1, win1_26 = 2,  win1_27 = 3,  win1_28 = 4,  win1_29 = 5,  win1_30 = 6,  win1_31 = 7,  win1_32 = 8,
        // win2_25 = 9, win2_26 = 10, win2_27 = 11, win2_28 = 12, win2_29 = 13, win2_30 = 14, win2_31 = 15, win2_32 = 16,
        
        // win1_33 = 1, win1_34 = 2,  win1_35 = 3,  win1_36 = 4,  win1_37 = 5,  win1_38 = 6,  win2_39 = 7,  win1_40 = 8,
        // win2_33 = 9, win2_34 = 10, win2_35 = 11, win2_36 = 12, win2_37 = 13, win2_38 = 14, win2_39 = 15, win2_40 = 16,
        
        // win1_41 = 1, win1_42 = 2,  win1_43 = 3,  win1_44 = 4,  win1_45 = 5,  win1_46 = 6,  win2_47 = 7,  win1_48 = 8,
        // win2_41 = 9, win2_42 = 10, win2_43 = 11, win2_44 = 12, win2_45 = 13, win2_46 = 14, win2_47 = 15, win2_48 = 16,
       
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
        
        //ain12 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //win21 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
       
        win1 = 9; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
     
        #20
        
        //ain11 ain22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //win11 win22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 1; ain2 = 4; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 1; win2 = 10; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 ain21 ain32 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 win12 win23 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 3; ain3 = 6; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 2; win3 = 11; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 ain31 ain42 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 win13 win24 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 5; ain4 = 8; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 3; win4 = 12; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 ain41 ain52 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 win14 win25 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 7; ain5 = 10; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 4; win5 = 13; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 ain51 ain62 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 win15 ain26 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 9; ain6 = 12; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 5; win6 = 14; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 ain61 ain72 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 win16 win27 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 11; ain7 = 14; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 6; win7 = 15; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 ain71 ain82    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 win17 win28    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 13; ain8 = 16;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 7; win8 = 16;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 ain81    ain92 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 win18    win29 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 15;
        ain9 = 2; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 8;
        win9 = 9; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    ain91 ain10_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    win19 win2_10 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 1; ain10 = 4; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 1; win10 = 10; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 ain10_1 ain11_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 win1_10 win2_11 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 3; ain11 = 6; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 2; win11 = 11; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 ain11_1 ain12_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 win1_11 win2_12 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 5; ain12 = 8; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 3; win12 = 12; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 ain12_1 ain13_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 win1_12 win2_13 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 7; ain13 = 10; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 4; win13 = 13; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 ain13_1 ain14_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 win1_13 win2_14 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 9; ain14 = 12; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 5; win14 = 14; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 ain14_1 ain15_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 win1_14 win2_15 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 11; ain15 = 14; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 6; win15 = 15; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain15_1 ain16_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_15 win2_16    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 13; ain16 = 16;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 7; win16 = 16;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain16_1    ain17_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_16    win2_17 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 15;
        ain17 = 2; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 8;
        win17 = 9; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain17_1 ain18_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_17 win2_18 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 1; ain18 = 4; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 1; win18 = 10; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
    
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain18_1 ain19_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_18 win2_19 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 3; ain19 = 6; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 2; win19 = 11; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;

        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain19_1 ain20_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_19 win2_20 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 5; ain20 = 8; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 3; win20 = 12; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain20_1 ain21_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_20 win2_21 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 7; ain21 = 10; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 4; win21 = 13; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain21_1 ain22_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0 
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_21 win2_22 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 9; ain22 = 12; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 5; win22 = 14; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain22_1 ain23_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_22 win2_23 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 11; ain23 = 14; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 6; win23 = 15; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain23_1 ain24_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_23 win2_24    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 13; ain24 = 16;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 7; win24 = 16;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
         #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain24_1    ain25_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_24    win2_25 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 15;
        ain25 = 2; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 8;
        win25 = 9; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;

        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain25_1 ain26_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_25 win2_26 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 1; ain26 = 4; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 1; win26 = 10; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain26_1 ain27_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_26 win2_27 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 3; ain27 = 6; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 2; win27 = 11; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain27_1 ain28_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_27 win2_28 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 5; ain28 = 8; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 3; win28 = 12; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain28_1 ain29_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_28 win2_29 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 7; ain29 = 10; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 4; win29 = 13; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
            
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain29_1 ain30_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_29 win2_30 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 9; ain30 = 12; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 5; win30 = 14; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;

        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain30_1 ain31_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_30 ain2_31 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 11; ain31 = 14; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 6; win31 = 15; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain31_2 ain32_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain1_31 win2_32    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 13; ain32 = 16;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 7; win32 = 16;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
         #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain32_1    ain33_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_32    win2_33 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 15;
        ain33 = 2; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 8;
        win33 = 9; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain33_1 ain34_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_33 win2_34 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 1; ain34 = 4; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 1; win34 = 10; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain34_1 ain35_2 0 0 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_34 win2_35 0 0 0 0 0    0 0 0 0 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 3; ain35 = 6; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 2; win35 = 11; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain35_1 ain36_2 0 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_35 win2_36 0 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 5; ain36 = 8; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 3; win36 = 12; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain36_1 ain37_2 0 0 0    0 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_36 win2_27 0 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 7; ain37 = 10; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 4; win37 = 13; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain37_1 ain38_2 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_27 win2_38 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 9; ain38 = 12; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 5; win38 = 14; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain38_1 ain39_2 0    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_38 win2_39 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 11; ain39 = 14; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 6; win39 = 15; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain39_1 ain40_2    0 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_39 win2_40    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 13; ain40 = 16;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 7; win40 = 16;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain40_1    ain41_2 0 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_40    win2_41 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 15;
        ain41 = 2; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 8;
        win41 = 9; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain41_1 ain42_2 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_41 win2_42 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 1; ain42 = 4; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 1; win42 = 10; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain42_1 ain43_2 0 0 0 0 0 
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_42 win2_43 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 3; ain43 = 6; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 2; win43 = 11; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain43_1 ain44_2 0 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_43 win2_44 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 5; ain44 = 8; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 3; win44 = 12; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain44_1 ain45_2 0 0 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_44 win2_45 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 7; ain45 = 10; ain46 = 0; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 4; win45 = 13; win46 = 0; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain45_1 ain46_2 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_45 win2_46 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 9; ain46 = 12; ain47 = 0; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 5; win46 = 14; win47 = 0; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain46_1 ain47_2 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_46 win2_47 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 11; ain47 = 14; ain48 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 6; win47 = 15; win48 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain47_1 ain48_2    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_47 win2_48   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 13; ain48 = 16;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 7; win48 = 16;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain48_1    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_48   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 15;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 8;
     
        #20
        
        //reset to 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;

        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        
        #3000
        
        
        $finish;
        
    end
    
endmodule
