`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 06:05:26 PM
// Design Name: 
// Module Name: mac_array_48x48
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


module mac_array_48x48(clk, rst,
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
    
    input clk, rst;
    
    input [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
                ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
                ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
                ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32, 
                ain33, ain34, ain35, ain36, ain37, ain38, ain39, ain40, 
                ain41, ain42, ain43, ain44, ain45, ain46, ain47, ain48;
    
    input [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
                win9, win10, win11, win12, win13, win14, win15, win16, 
                win17, win18, win19, win20, win21, win22, win23, win24, 
                win25, win26, win27, win28, win29, win30, win31, win32, 
                win33, win34, win35, win36, win37, win38, win39, win40, 
                win41, win42, win43, win44, win45, win46, win47, win48;   
    
    //row1
    output [21:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                  sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                  sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                  sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
                  sout1_33, sout1_34, sout1_35, sout1_36, sout1_37, sout1_38, sout1_39, sout1_40,
                  sout1_41, sout1_42, sout1_43, sout1_44, sout1_45, sout1_46, sout1_47, sout1_48;
    
    //row2
    output [21:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                  sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                  sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                  sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
                  sout2_33, sout2_34, sout2_35, sout2_36, sout2_37, sout2_38, sout2_39, sout2_40,
                  sout2_41, sout2_42, sout2_43, sout2_44, sout2_45, sout2_46, sout2_47, sout2_48;
    
    //row3
    output [21:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                  sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                  sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                  sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
                  sout3_33, sout3_34, sout3_35, sout3_36, sout3_37, sout3_38, sout3_39, sout3_40,
                  sout3_41, sout3_42, sout3_43, sout3_44, sout3_45, sout3_46, sout3_47, sout3_48;
    
    //row4
    output [21:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                  sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                  sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                  sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
                  sout4_33, sout4_34, sout4_35, sout4_36, sout4_37, sout4_38, sout4_39, sout4_40,
                  sout4_41, sout4_42, sout4_43, sout4_44, sout4_45, sout4_46, sout4_47, sout4_48;
    
    //row5
    output [21:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                  sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                  sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                  sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
                  sout5_33, sout5_34, sout5_35, sout5_36, sout5_37, sout5_38, sout5_39, sout5_40,
                  sout5_41, sout5_42, sout5_43, sout5_44, sout5_45, sout5_46, sout5_47, sout5_48;
    
    //row6
    output [21:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                  sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                  sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                  sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
                  sout6_33, sout6_34, sout6_35, sout6_36, sout6_37, sout6_38, sout6_39, sout6_40,
                  sout6_41, sout6_42, sout6_43, sout6_44, sout6_45, sout6_46, sout6_47, sout6_48;
    
    //row7
    output [21:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                  sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                  sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                  sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
                  sout7_33, sout7_34, sout7_35, sout7_36, sout7_37, sout7_38, sout7_39, sout7_40,
                  sout7_41, sout7_42, sout7_43, sout7_44, sout7_45, sout7_46, sout7_47, sout7_48;
    
    //row8
    output [21:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                  sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                  sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                  sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
                  sout8_33, sout8_34, sout8_35, sout8_36, sout8_37, sout8_38, sout8_39, sout8_40,
                  sout8_41, sout8_42, sout8_43, sout8_44, sout8_45, sout8_46, sout8_47, sout8_48;
    
    //row9
    output [21:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                  sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                  sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                  sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
                  sout9_33, sout9_34, sout9_35, sout9_36, sout9_37, sout9_38, sout9_39, sout9_40,
                  sout9_41, sout9_42, sout9_43, sout9_44, sout9_45, sout9_46, sout9_47, sout9_48;
    
    //row10 
    output [21:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                  sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                  sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                  sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
                  sout10_33, sout10_34, sout10_35, sout10_36, sout10_37, sout10_38, sout10_39, sout10_40,
                  sout10_41, sout10_42, sout10_43, sout10_44, sout10_45, sout10_46, sout10_47, sout10_48;
                  
    //row11
    output [21:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                  sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                  sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                  sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
                  sout11_33, sout11_34, sout11_35, sout11_36, sout11_37, sout11_38, sout11_39, sout11_40,
                  sout11_41, sout11_42, sout11_43, sout11_44, sout11_45, sout11_46, sout11_47, sout11_48;
                        
    //row12
    output [21:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                  sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                  sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                  sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
                  sout12_33, sout12_34, sout12_35, sout12_36, sout12_37, sout12_38, sout12_39, sout12_40,
                  sout12_41, sout12_42, sout12_43, sout12_44, sout12_45, sout12_46, sout12_47, sout12_48;
               
    //row13
    output [21:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                  sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                  sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                  sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
                  sout13_33, sout13_34, sout13_35, sout13_36, sout13_37, sout13_38, sout13_39, sout13_40,
                  sout13_41, sout13_42, sout13_43, sout13_44, sout13_45, sout13_46, sout13_47, sout13_48;
                  
    //row14
    output [21:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                  sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                  sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                  sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
                  sout14_33, sout14_34, sout14_35, sout14_36, sout14_37, sout14_38, sout14_39, sout14_40,
                  sout14_41, sout14_42, sout14_43, sout14_44, sout14_45, sout14_46, sout14_47, sout14_48;
                  
    //row15
    output [21:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                  sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                  sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                  sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
                  sout15_33, sout15_34, sout15_35, sout15_36, sout15_37, sout15_38, sout15_39, sout15_40,
                  sout15_41, sout15_42, sout15_43, sout15_44, sout15_45, sout15_46, sout15_47, sout15_48;
                  
    //row16
    output [21:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                  sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                  sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                  sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
                  sout16_33, sout16_34, sout16_35, sout16_36, sout16_37, sout16_38, sout16_39, sout16_40,
                  sout16_41, sout16_42, sout16_43, sout16_44, sout16_45, sout16_46, sout16_47, sout16_48;
            
    //row17
    output [21:0] sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                  sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                  sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                  sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
                  sout17_33, sout17_34, sout17_35, sout17_36, sout17_37, sout17_38, sout17_39, sout17_40,
                  sout17_41, sout17_42, sout17_43, sout17_44, sout17_45, sout17_46, sout17_47, sout17_48;
                  
    //row18
    output [21:0] sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                  sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                  sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                  sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
                  sout18_33, sout18_34, sout18_35, sout18_36, sout18_37, sout18_38, sout18_39, sout18_40,
                  sout18_41, sout18_42, sout18_43, sout18_44, sout18_45, sout18_46, sout18_47, sout18_48;
                  
    //row19
    output [21:0] sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                  sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                  sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                  sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
                  sout19_33, sout19_34, sout19_35, sout19_36, sout19_37, sout19_38, sout19_39, sout19_40,
                  sout19_41, sout19_42, sout19_43, sout19_44, sout19_45, sout19_46, sout19_47, sout19_48;
                  
    //row20
    output [21:0] sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                  sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                  sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                  sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
                  sout20_33, sout20_34, sout20_35, sout20_36, sout20_37, sout20_38, sout20_39, sout20_40,
                  sout20_41, sout20_42, sout20_43, sout20_44, sout20_45, sout20_46, sout20_47, sout20_48;
        
    //row21        
    output [21:0] sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                  sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                  sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                  sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
                  sout21_33, sout21_34, sout21_35, sout21_36, sout21_37, sout21_38, sout21_39, sout21_40,
                  sout21_41, sout21_42, sout21_43, sout21_44, sout21_45, sout21_46, sout21_47, sout21_48;
                            
    //row22        
    output [21:0] sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                  sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                  sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                  sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
                  sout22_33, sout22_34, sout22_35, sout22_36, sout22_37, sout22_38, sout22_39, sout22_40,
                  sout22_41, sout22_42, sout22_43, sout22_44, sout22_45, sout22_46, sout22_47, sout22_48;
                         
    //row23       
    output [21:0] sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                  sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                  sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                  sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
                  sout23_33, sout23_34, sout23_35, sout23_36, sout23_37, sout23_38, sout23_39, sout23_40,
                  sout23_41, sout23_42, sout23_43, sout23_44, sout23_45, sout23_46, sout23_47, sout23_48;
                  
    //row24        
    output [21:0] sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                  sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                  sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                  sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
                  sout24_33, sout24_34, sout24_35, sout24_36, sout24_37, sout24_38, sout24_39, sout24_40,
                  sout24_41, sout24_42, sout24_43, sout24_44, sout24_45, sout24_46, sout24_47, sout24_48;
                
    //row25        
    output [21:0] sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                  sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                  sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                  sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
                  sout25_33, sout25_34, sout25_35, sout25_36, sout25_37, sout25_38, sout25_39, sout25_40,
                  sout25_41, sout25_42, sout25_43, sout25_44, sout25_45, sout25_46, sout25_47, sout25_48;
                 
    //row26        
    output [21:0] sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                  sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                  sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                  sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
                  sout26_33, sout26_34, sout26_35, sout26_36, sout26_37, sout26_38, sout26_39, sout26_40,
                  sout26_41, sout26_42, sout26_43, sout26_44, sout26_45, sout26_46, sout26_47, sout26_48;
                  
    //row27        
    output [21:0] sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                  sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                  sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                  sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
                  sout27_33, sout27_34, sout27_35, sout27_36, sout27_37, sout27_38, sout27_39, sout27_40,
                  sout27_41, sout27_42, sout27_43, sout27_44, sout27_45, sout27_46, sout27_47, sout27_48;
                  
    //row28        
    output [21:0] sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                  sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                  sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                  sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
                  sout28_33, sout28_34, sout28_35, sout28_36, sout28_37, sout28_38, sout28_39, sout28_40,
                  sout28_41, sout28_42, sout28_43, sout28_44, sout28_45, sout28_46, sout28_47, sout28_48;
                  
    //row29       
    output [21:0] sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                  sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                  sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                  sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
                  sout29_33, sout29_34, sout29_35, sout29_36, sout29_37, sout29_38, sout29_39, sout29_40,
                  sout29_41, sout29_42, sout29_43, sout29_44, sout29_45, sout29_46, sout29_47, sout29_48;
                  
    //row30        
    output [21:0] sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                  sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                  sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                  sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
                  sout30_33, sout30_34, sout30_35, sout30_36, sout30_37, sout30_38, sout30_39, sout30_40,
                  sout30_41, sout30_42, sout30_43, sout30_44, sout30_45, sout30_46, sout30_47, sout30_48;
                
    //row31        
    output [21:0] sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                  sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                  sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                  sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
                  sout31_33, sout31_34, sout31_35, sout31_36, sout31_37, sout31_38, sout31_39, sout31_40,
                  sout31_41, sout31_42, sout31_43, sout31_44, sout31_45, sout31_46, sout31_47, sout31_48;
                  
    //row32        
    output [21:0] sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                  sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                  sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                  sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32,
                  sout32_33, sout32_34, sout32_35, sout32_36, sout32_37, sout32_38, sout32_39, sout32_40,
                  sout32_41, sout32_42, sout32_43, sout32_44, sout32_45, sout32_46, sout32_47, sout32_48;
                  
    //row33        
    output [21:0] sout33_1, sout33_2, sout33_3, sout33_4, sout33_5, sout33_6, sout33_7, sout33_8,
                  sout33_9, sout33_10, sout33_11, sout33_12, sout33_13, sout33_14, sout33_15, sout33_16,
                  sout33_17, sout33_18, sout33_19, sout33_20, sout33_21, sout33_22, sout33_23, sout33_24, 
                  sout33_25, sout33_26, sout33_27, sout33_28, sout33_29, sout33_30, sout33_31, sout33_32,
                  sout33_33, sout33_34, sout33_35, sout33_36, sout33_37, sout33_38, sout33_39, sout33_40,
                  sout33_41, sout33_42, sout33_43, sout33_44, sout33_45, sout33_46, sout33_47, sout33_48;
                    
                    
    //row34        
    output [21:0] sout34_1, sout34_2, sout34_3, sout34_4, sout34_5, sout34_6, sout34_7, sout34_8,
                  sout34_9, sout34_10, sout34_11, sout34_12, sout34_13, sout34_14, sout34_15, sout34_16,
                  sout34_17, sout34_18, sout34_19, sout34_20, sout34_21, sout34_22, sout34_23, sout34_24, 
                  sout34_25, sout34_26, sout34_27, sout34_28, sout34_29, sout34_30, sout34_31, sout34_32,
                  sout34_33, sout34_34, sout34_35, sout34_36, sout34_37, sout34_38, sout34_39, sout34_40,
                  sout34_41, sout34_42, sout34_43, sout34_44, sout34_45, sout34_46, sout34_47, sout34_48;
                  
    //row35        
    output [21:0] sout35_1, sout35_2, sout35_3, sout35_4, sout35_5, sout35_6, sout35_7, sout35_8,
                  sout35_9, sout35_10, sout35_11, sout35_12, sout35_13, sout35_14, sout35_15, sout35_16,
                  sout35_17, sout35_18, sout35_19, sout35_20, sout35_21, sout35_22, sout35_23, sout35_24, 
                  sout35_25, sout35_26, sout35_27, sout35_28, sout35_29, sout35_30, sout35_31, sout35_32,
                  sout35_33, sout35_34, sout35_35, sout35_36, sout35_37, sout35_38, sout35_39, sout35_40,
                  sout35_41, sout35_42, sout35_43, sout35_44, sout35_45, sout35_46, sout35_47, sout35_48;
                  
    //row36        
    output [21:0] sout36_1, sout36_2, sout36_3, sout36_4, sout36_5, sout36_6, sout36_7, sout36_8,
                  sout36_9, sout36_10, sout36_11, sout36_12, sout36_13, sout36_14, sout36_15, sout36_16,
                  sout36_17, sout36_18, sout36_19, sout36_20, sout36_21, sout36_22, sout36_23, sout36_24, 
                  sout36_25, sout36_26, sout36_27, sout36_28, sout36_29, sout36_30, sout36_31, sout36_32,
                  sout36_33, sout36_34, sout36_35, sout36_36, sout36_37, sout36_38, sout36_39, sout36_40,
                  sout36_41, sout36_42, sout36_43, sout36_44, sout36_45, sout36_46, sout36_47, sout36_48;
                  
    //row37        
    output [21:0] sout37_1, sout37_2, sout37_3, sout37_4, sout37_5, sout37_6, sout37_7, sout37_8,
                  sout37_9, sout37_10, sout37_11, sout37_12, sout37_13, sout37_14, sout37_15, sout37_16,
                  sout37_17, sout37_18, sout37_19, sout37_20, sout37_21, sout37_22, sout37_23, sout37_24, 
                  sout37_25, sout37_26, sout37_27, sout37_28, sout37_29, sout37_30, sout37_31, sout37_32,
                  sout37_33, sout37_34, sout37_35, sout37_36, sout37_37, sout37_38, sout37_39, sout37_40,
                  sout37_41, sout37_42, sout37_43, sout37_44, sout37_45, sout37_46, sout37_47, sout37_48;
                  
    //row38        
    output [21:0] sout38_1, sout38_2, sout38_3, sout38_4, sout38_5, sout38_6, sout38_7, sout38_8,
                  sout38_9, sout38_10, sout38_11, sout38_12, sout38_13, sout38_14, sout38_15, sout38_16,
                  sout38_17, sout38_18, sout38_19, sout38_20, sout38_21, sout38_22, sout38_23, sout38_24, 
                  sout38_25, sout38_26, sout38_27, sout38_28, sout38_29, sout38_30, sout38_31, sout38_32,
                  sout38_33, sout38_34, sout38_35, sout38_36, sout38_37, sout38_38, sout38_39, sout38_40,
                  sout38_41, sout38_42, sout38_43, sout38_44, sout38_45, sout38_46, sout38_47, sout38_48;
                  
    //row39        
    output [21:0] sout39_1, sout39_2, sout39_3, sout39_4, sout39_5, sout39_6, sout39_7, sout39_8,
                  sout39_9, sout39_10, sout39_11, sout39_12, sout39_13, sout39_14, sout39_15, sout39_16,
                  sout39_17, sout39_18, sout39_19, sout39_20, sout39_21, sout39_22, sout39_23, sout39_24, 
                  sout39_25, sout39_26, sout39_27, sout39_28, sout39_29, sout39_30, sout39_31, sout39_32,
                  sout39_33, sout39_34, sout39_35, sout39_36, sout39_37, sout39_38, sout39_39, sout39_40,
                  sout39_41, sout39_42, sout39_43, sout39_44, sout39_45, sout39_46, sout39_47, sout39_48;
                  
    //row40        
    output [21:0] sout40_1, sout40_2, sout40_3, sout40_4, sout40_5, sout40_6, sout40_7, sout40_8,
                  sout40_9, sout40_10, sout40_11, sout40_12, sout40_13, sout40_14, sout40_15, sout40_16,
                  sout40_17, sout40_18, sout40_19, sout40_20, sout40_21, sout40_22, sout40_23, sout40_24, 
                  sout40_25, sout40_26, sout40_27, sout40_28, sout40_29, sout40_30, sout40_31, sout40_32,
                  sout40_33, sout40_34, sout40_35, sout40_36, sout40_37, sout40_38, sout40_39, sout40_40,
                  sout40_41, sout40_42, sout40_43, sout40_44, sout40_45, sout40_46, sout40_47, sout40_48;
                  
    //row41        
    output [21:0] sout41_1, sout41_2, sout41_3, sout41_4, sout41_5, sout41_6, sout41_7, sout41_8,
                  sout41_9, sout41_10, sout41_11, sout41_12, sout41_13, sout41_14, sout41_15, sout41_16,
                  sout41_17, sout41_18, sout41_19, sout41_20, sout41_21, sout41_22, sout41_23, sout41_24, 
                  sout41_25, sout41_26, sout41_27, sout41_28, sout41_29, sout41_30, sout41_31, sout41_32,
                  sout41_33, sout41_34, sout41_35, sout41_36, sout41_37, sout41_38, sout41_39, sout41_40,
                  sout41_41, sout41_42, sout41_43, sout41_44, sout41_45, sout41_46, sout41_47, sout41_48;
                  
    //row42        
    output [21:0] sout42_1, sout42_2, sout42_3, sout42_4, sout42_5, sout42_6, sout42_7, sout42_8,
                  sout42_9, sout42_10, sout42_11, sout42_12, sout42_13, sout42_14, sout42_15, sout42_16,
                  sout42_17, sout42_18, sout42_19, sout42_20, sout42_21, sout42_22, sout42_23, sout42_24, 
                  sout42_25, sout42_26, sout42_27, sout42_28, sout42_29, sout42_30, sout42_31, sout42_32,
                  sout42_33, sout42_34, sout42_35, sout42_36, sout42_37, sout42_38, sout42_39, sout42_40,
                  sout42_41, sout42_42, sout42_43, sout42_44, sout42_45, sout42_46, sout42_47, sout42_48;
                  
    //row43        
    output [21:0] sout43_1, sout43_2, sout43_3, sout43_4, sout43_5, sout43_6, sout43_7, sout43_8,
                  sout43_9, sout43_10, sout43_11, sout43_12, sout43_13, sout43_14, sout43_15, sout43_16,
                  sout43_17, sout43_18, sout43_19, sout43_20, sout43_21, sout43_22, sout43_23, sout43_24, 
                  sout43_25, sout43_26, sout43_27, sout43_28, sout43_29, sout43_30, sout43_31, sout43_32,
                  sout43_33, sout43_34, sout43_35, sout43_36, sout43_37, sout43_38, sout43_39, sout43_40,
                  sout43_41, sout43_42, sout43_43, sout43_44, sout43_45, sout43_46, sout43_47, sout43_48;
                  
    //row44        
    output [21:0] sout44_1, sout44_2, sout44_3, sout44_4, sout44_5, sout44_6, sout44_7, sout44_8,
                  sout44_9, sout44_10, sout44_11, sout44_12, sout44_13, sout44_14, sout44_15, sout44_16,
                  sout44_17, sout44_18, sout44_19, sout44_20, sout44_21, sout44_22, sout44_23, sout44_24, 
                  sout44_25, sout44_26, sout44_27, sout44_28, sout44_29, sout44_30, sout44_31, sout44_32,
                  sout44_33, sout44_34, sout44_35, sout44_36, sout44_37, sout44_38, sout44_39, sout44_40,
                  sout44_41, sout44_42, sout44_43, sout44_44, sout44_45, sout44_46, sout44_47, sout44_48;
                
    //row45        
    output [21:0] sout45_1, sout45_2, sout45_3, sout45_4, sout45_5, sout45_6, sout45_7, sout45_8,
                  sout45_9, sout45_10, sout45_11, sout45_12, sout45_13, sout45_14, sout45_15, sout45_16,
                  sout45_17, sout45_18, sout45_19, sout45_20, sout45_21, sout45_22, sout45_23, sout45_24, 
                  sout45_25, sout45_26, sout45_27, sout45_28, sout45_29, sout45_30, sout45_31, sout45_32,
                  sout45_33, sout45_34, sout45_35, sout45_36, sout45_37, sout45_38, sout45_39, sout45_40,
                  sout45_41, sout45_42, sout45_43, sout45_44, sout45_45, sout45_46, sout45_47, sout45_48;
                  
    //row46        
    output [21:0] sout46_1, sout46_2, sout46_3, sout46_4, sout46_5, sout46_6, sout46_7, sout46_8,
                  sout46_9, sout46_10, sout46_11, sout46_12, sout46_13, sout46_14, sout46_15, sout46_16,
                  sout46_17, sout46_18, sout46_19, sout46_20, sout46_21, sout46_22, sout46_23, sout46_24, 
                  sout46_25, sout46_26, sout46_27, sout46_28, sout46_29, sout46_30, sout46_31, sout46_32,
                  sout46_33, sout46_34, sout46_35, sout46_36, sout46_37, sout46_38, sout46_39, sout46_40,
                  sout46_41, sout46_42, sout46_43, sout46_44, sout46_45, sout46_46, sout46_47, sout46_48;
                 
    //row47        
    output [21:0] sout47_1, sout47_2, sout47_3, sout47_4, sout47_5, sout47_6, sout47_7, sout47_8,
                  sout47_9, sout47_10, sout47_11, sout47_12, sout47_13, sout47_14, sout47_15, sout47_16,
                  sout47_17, sout47_18, sout47_19, sout47_20, sout47_21, sout47_22, sout47_23, sout47_24, 
                  sout47_25, sout47_26, sout47_27, sout47_28, sout47_29, sout47_30, sout47_31, sout47_32,
                  sout47_33, sout47_34, sout47_35, sout47_36, sout47_37, sout47_38, sout47_39, sout47_40,
                  sout47_41, sout47_42, sout47_43, sout47_44, sout47_45, sout47_46, sout47_47, sout47_48;
                  
    //row48        
    output [21:0] sout48_1, sout48_2, sout48_3, sout48_4, sout48_5, sout48_6, sout48_7, sout48_8,
                  sout48_9, sout48_10, sout48_11, sout48_12, sout48_13, sout48_14, sout48_15, sout48_16,
                  sout48_17, sout48_18, sout48_19, sout48_20, sout48_21, sout48_22, sout48_23, sout48_24, 
                  sout48_25, sout48_26, sout48_27, sout48_28, sout48_29, sout48_30, sout48_31, sout48_32,
                  sout48_33, sout48_34, sout48_35, sout48_36, sout48_37, sout48_38, sout48_39, sout48_40,
                  sout48_41, sout48_42, sout48_43, sout48_44, sout48_45, sout48_46, sout48_47, sout48_48;
                
                  
                  
    //12 4x4 by 12 4x4
    
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
                
    //mac_array_4x4_19
    wire [7:0] aout1_36, aout2_36, aout3_36, aout4_36,
               wout4_33, wout4_34, wout4_35, wout4_36;
                            
    //mac_array_4x4_1_10
    wire [7:0] aout1_40, aout2_40, aout3_40, aout4_40,
               wout4_37, wout4_38, wout4_39, wout4_40;
                
    //mac_array_4x4_1_11
    wire [7:0] aout1_44, aout2_44, aout3_44, aout4_44,
               wout4_41, wout4_42, wout4_43, wout4_44;
                
    //mac_array_4x4_1_12
    wire [7:0] aout1_48, aout2_48, aout3_48, aout4_48,
               wout4_45, wout4_46, wout4_47, wout4_48;
               
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
                
    //mac_array_4x4_29
    wire [7:0] aout5_36, aout6_36, aout7_36, aout8_36,
               wout8_33, wout8_34, wout8_35, wout8_36;
                
    //mac_array_4x4_2_10
    wire [7:0] aout5_40, aout6_40, aout7_40, aout8_40,
               wout8_37, wout8_38, wout8_39, wout8_40;
                
    //mac_array_4x4_2_11
    wire [7:0] aout5_44, aout6_44, aout7_44, aout8_44,
               wout8_41, wout8_42, wout8_43, wout8_44;
                
    //mac_array_4x4_2_12
    wire [7:0] aout5_48, aout6_48, aout7_48, aout8_48,
               wout8_45, wout8_46, wout8_47, wout8_48;
               
    
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
                
    //mac_array_4x4_39
    wire [7:0] aout9_36, aout10_36, aout11_36, aout12_36,
               wout12_33, wout12_34, wout12_35, wout12_36;
                
                
    //mac_array_4x4_3_10
    wire [7:0] aout9_40, aout10_40, aout11_40, aout12_40,
               wout12_37, wout12_38, wout12_39, wout12_40;
                
    //mac_array_4x4_3_11
    wire [7:0] aout9_44, aout10_44, aout11_44, aout12_44,
               wout12_41, wout12_42, wout12_43, wout12_44;
                
    //mac_array_4x4_3_12
    wire [7:0] aout9_48, aout10_48, aout11_48, aout12_48,
               wout12_45, wout12_46, wout12_47, wout12_48; 
               
               
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
                
    //mac_array_4x4_49
    wire [7:0] aout13_36, aout14_36, aout15_36, aout16_36,
               wout16_33, wout16_34, wout16_35, wout16_36;
                
    //mac_array_4x4_4_10
    wire [7:0] aout13_40, aout14_40, aout15_40, aout16_40,
               wout16_37, wout16_38, wout16_39, wout16_40;
                
    //mac_array_4x4_4_11
    wire [7:0] aout13_44, aout14_44, aout15_44, aout16_44,
               wout16_41, wout16_42, wout16_43, wout16_44;
                
    //mac_array_4x4_4_12
    wire [7:0] aout13_48, aout14_48, aout15_48, aout16_48,
               wout16_45, wout16_46, wout16_47, wout16_48;
              
   
   
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
                
    //mac_array_4x4_59
    wire [7:0] aout17_36, aout18_36, aout19_36, aout20_36,
               wout20_33, wout20_34, wout20_35, wout20_36;
                
    //mac_array_4x4_5_10
    wire [7:0] aout17_40, aout18_40, aout19_40, aout20_40,
               wout20_37, wout20_38, wout20_39, wout20_40;
                
    //mac_array_4x4_5_11
    wire [7:0] aout17_44, aout18_44, aout19_44, aout20_44,
               wout20_41, wout20_42, wout20_43, wout20_44;
                
    //mac_array_4x4_5_12
    wire [7:0] aout17_48, aout18_48, aout19_48, aout20_48,
               wout20_45, wout20_46, wout20_47, wout20_48;     
    
    
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
                
    //mac_array_4x4_69
    wire [7:0] aout21_36, aout22_36, aout23_36, aout24_36,
               wout24_33, wout24_34, wout24_35, wout24_36;
                
    //mac_array_4x4_6_10
    wire [7:0] aout21_40, aout22_40, aout23_40, aout24_40,
               wout24_37, wout24_38, wout24_39, wout24_40;
                
    //mac_array_4x4_6_11
    wire [7:0] aout21_44, aout22_44, aout23_44, aout24_44,
               wout24_41, wout24_42, wout24_43, wout24_44;
                
    //mac_array_4x4_6_12
    wire [7:0] aout21_48, aout22_48, aout23_48, aout24_48,
               wout24_45, wout24_46, wout24_47, wout24_48;
               
          
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
                
    //mac_array_4x4_79
    wire [7:0] aout25_36, aout26_36, aout27_36, aout28_36,
               wout28_33, wout28_34, wout28_35, wout28_36;
                
    //mac_array_4x4_7_10
    wire [7:0] aout25_40, aout26_40, aout27_40, aout28_40,
               wout28_37, wout28_38, wout28_39, wout28_40;
                
    //mac_array_4x4_7_11
    wire [7:0] aout25_44, aout26_44, aout27_44, aout28_44,
               wout28_41, wout28_42, wout28_43, wout28_44;
                
    //mac_array_4x4_7_12
    wire [7:0] aout25_48, aout26_48, aout27_48, aout28_48,
               wout28_45, wout28_46, wout28_47, wout28_48;
               
   
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
                
    //mac_array_4x4_89
    wire [7:0] aout29_36, aout30_36, aout31_36, aout32_36,
               wout32_33, wout32_34, wout32_35, wout32_36;
                
    //mac_array_4x4_8_10
    wire [7:0] aout29_40, aout30_40, aout31_40, aout32_40,
               wout32_37, wout32_38, wout32_39, wout32_40;
                
    //mac_array_4x4_8_11
    wire [7:0] aout29_44, aout30_44, aout31_44, aout32_44,
               wout32_41, wout32_42, wout32_43, wout32_44;
                
    //mac_array_4x4_8_12
    wire [7:0] aout29_48, aout30_48, aout31_48, aout32_48,
               wout32_45, wout32_46, wout32_47, wout32_48;
               
        
    //row9
    //mac_array_4x4_91
    wire [7:0] aout33_4, aout34_4, aout35_4, aout36_4,
               wout36_1, wout36_2, wout36_3, wout36_4;
                
    //mac_array_4x4_92
    wire [7:0] aout33_8, aout34_8, aout35_8, aout36_8,
               wout36_5, wout36_6, wout36_7, wout36_8;
                
    //mac_array_4x4_93
    wire [7:0] aout33_12, aout34_12, aout35_12, aout36_12,
               wout36_9, wout36_10, wout36_11, wout36_12;
                
    //mac_array_4x4_94
    wire [7:0] aout33_16, aout34_16, aout35_16, aout36_16,
               wout36_13, wout36_14, wout36_15, wout36_16;
                
    //mac_array_4x4_95
    wire [7:0] aout33_20, aout34_20, aout35_20, aout36_20,
               wout36_17, wout36_18, wout36_19, wout36_20;
                
    //mac_array_4x4_96
    wire [7:0] aout33_24, aout34_24, aout35_24, aout36_24,
               wout36_21, wout36_22, wout36_23, wout36_24;
                
    //mac_array_4x4_97
    wire [7:0] aout33_28, aout34_28, aout35_28, aout36_28,
               wout36_25, wout36_26, wout36_27, wout36_28;
                
    //mac_array_4x4_98
    wire [7:0] aout33_32, aout34_32, aout35_32, aout36_32,
               wout36_29, wout36_30, wout36_31, wout36_32;
                
    //mac_array_4x4_99
    wire [7:0] aout33_36, aout34_36, aout35_36, aout36_36,
               wout36_33, wout36_34, wout36_35, wout36_36;
                
    //mac_array_4x4_9_10
    wire [7:0] aout33_40, aout34_40, aout35_40, aout36_40,
               wout36_37, wout36_38, wout36_39, wout36_40;
                
    //mac_array_4x4_9_11
    wire [7:0] aout33_44, aout34_44, aout35_44, aout36_44,
               wout36_41, wout36_42, wout36_43, wout36_44;
                
    //mac_array_4x4_9_12
    wire [7:0] aout33_48, aout34_48, aout35_48, aout36_48,
               wout36_45, wout36_46, wout36_47, wout36_48;
         
             
    //row10
    //mac_array_4x4_10_1
    wire [7:0] aout37_4, aout38_4, aout39_4, aout40_4,
               wout40_1, wout40_2, wout40_3, wout40_4;
                
    //mac_array_4x4_10_2
    wire [7:0] aout37_8, aout38_8, aout39_8, aout40_8,
               wout40_5, wout40_6, wout40_7, wout40_8;
                
    //mac_array_4x4_10_3
    wire [7:0] aout37_12, aout38_12, aout39_12, aout40_12,
               wout40_9, wout40_10, wout40_11, wout40_12;
                
    //mac_array_4x4_10_4
    wire [7:0] aout37_16, aout38_16, aout39_16, aout40_16,
               wout40_13, wout40_14, wout40_15, wout40_16;
                
    //mac_array_4x4_10_5
    wire [7:0] aout37_20, aout38_20, aout39_20, aout40_20,
               wout40_17, wout40_18, wout40_19, wout40_20;
                
    //mac_array_4x4_10_6
    wire [7:0] aout37_24, aout38_24, aout39_24, aout40_24,
               wout40_21, wout40_22, wout40_23, wout40_24;
                
    //mac_array_4x4_10_7
    wire [7:0] aout37_28, aout38_28, aout39_28, aout40_28,
               wout40_25, wout40_26, wout40_27, wout40_28;
                
    //mac_array_4x4_10_8
    wire [7:0] aout37_32, aout38_32, aout39_32, aout40_32,
               wout40_29, wout40_30, wout40_31, wout40_32;
                
    //mac_array_4x4_10_9
    wire [7:0] aout37_36, aout38_36, aout39_36, aout40_36,
               wout40_33, wout40_34, wout40_35, wout40_36;
                
    //mac_array_4x4_10_10
    wire [7:0] aout37_40, aout38_40, aout39_40, aout40_40,
               wout40_37, wout40_38, wout40_39, wout40_40;
                
    //mac_array_4x4_10_11
    wire [7:0] aout37_44, aout38_44, aout39_44, aout40_44,
               wout40_41, wout40_42, wout40_43, wout40_44;
                
    //mac_array_4x4_10_12
    wire [7:0] aout37_48, aout38_48, aout39_48, aout40_48,
               wout40_45, wout40_46, wout40_47, wout40_48;
         
       
    //row11
    //mac_array_4x4_11_1
    wire [7:0] aout41_4, aout42_4, aout43_4, aout44_4,
               wout44_1, wout44_2, wout44_3, wout44_4;
                
    //mac_array_4x4_11_2
    wire [7:0] aout41_8, aout42_8, aout43_8, aout44_8,
               wout44_5, wout44_6, wout44_7, wout44_8;
                
    //mac_array_4x4_11_3
    wire [7:0] aout41_12, aout42_12, aout43_12, aout44_12,
               wout44_9, wout44_10, wout44_11, wout44_12;
                
    //mac_array_4x4_11_4
    wire [7:0] aout41_16, aout42_16, aout43_16, aout44_16,
               wout44_13, wout44_14, wout44_15, wout44_16;
                
    //mac_array_4x4_11_5
    wire [7:0] aout41_20, aout42_20, aout43_20, aout44_20,
               wout44_17, wout44_18, wout44_19, wout44_20;
                
    //mac_array_4x4_11_6
    wire [7:0] aout41_24, aout42_24, aout43_24, aout44_24,
               wout44_21, wout44_22, wout44_23, wout44_24;
                
    //mac_array_4x4_11_7
    wire [7:0] aout41_28, aout42_28, aout43_28, aout44_28,
               wout44_25, wout44_26, wout44_27, wout44_28;
                
    //mac_array_4x4_11_8
    wire [7:0] aout41_32, aout42_32, aout43_32, aout44_32,
               wout44_29, wout44_30, wout44_31, wout44_32;
                
    //mac_array_4x4_11_9
    wire [7:0] aout41_36, aout42_36, aout43_36, aout44_36,
               wout44_33, wout44_34, wout44_35, wout44_36;
                
    //mac_array_4x4_11_10
    wire [7:0] aout41_40, aout42_40, aout43_40, aout44_40,
               wout44_37, wout44_38, wout44_39, wout44_40;
                
    //mac_array_4x4_11_11
    wire [7:0] aout41_44, aout42_44, aout43_44, aout44_44,
               wout44_41, wout44_42, wout44_43, wout44_44;
                
    //mac_array_4x4_11_12
    wire [7:0] aout41_48, aout42_48, aout43_48, aout44_48,
               wout44_45, wout44_46, wout44_47, wout44_48;
               
   
    //row12
    //mac_array_4x4_12_1
    wire [7:0] aout45_4, aout46_4, aout47_4, aout48_4,
               wout48_1, wout48_2, wout48_3, wout48_4;
                
    //mac_array_4x4_12_2
    wire [7:0] aout45_8, aout46_8, aout47_8, aout48_8,
               wout48_5, wout48_6, wout48_7, wout48_8;
                
    //mac_array_4x4_12_3
    wire [7:0] aout45_12, aout46_12, aout47_12, aout48_12,
               wout48_9, wout48_10, wout48_11, wout48_12;
                
    //mac_array_4x4_12_4
    wire [7:0] aout45_16, aout46_16, aout47_16, aout48_16,
               wout48_13, wout48_14, wout48_15, wout48_16;
                
    //mac_array_4x4_12_5
    wire [7:0] aout45_20, aout46_20, aout47_20, aout48_20,
               wout48_17, wout48_18, wout48_19, wout48_20;
                
    //mac_array_4x4_12_6
    wire [7:0] aout45_24, aout46_24, aout47_24, aout48_24,
               wout48_21, wout48_22, wout48_23, wout48_24;
                
    //mac_array_4x4_12_7
    wire [7:0] aout45_28, aout46_28, aout47_28, aout48_28,
               wout48_25, wout48_26, wout48_27, wout48_28;
                
    //mac_array_4x4_12_8
    wire [7:0] aout45_32, aout46_32, aout47_32, aout48_32,
               wout48_29, wout48_30, wout48_31, wout48_32;
                
    //mac_array_4x4_12_9
    wire [7:0] aout45_36, aout46_36, aout47_36, aout48_36,
               wout48_33, wout48_34, wout48_35, wout48_36;
                
    //mac_array_4x4_12_10
    wire [7:0] aout45_40, aout46_40, aout47_40, aout48_40,
               wout48_37, wout48_38, wout48_39, wout48_40;
                
    //mac_array_4x4_12_11
    wire [7:0] aout45_44, aout46_44, aout47_44, aout48_44,
               wout48_41, wout48_42, wout48_43, wout48_44;
                
    //mac_array_4x4_12_12
    wire [7:0] aout45_48, aout46_48, aout47_48, aout48_48,
               wout48_45, wout48_46, wout48_47, wout48_48;
               
  
    
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
                    
    mac_array_4x4 mac_array_4x4_19 (.clk(clk), .rst(rst),
                    .ain1(aout1_32), .ain2(aout2_32), .ain3(aout3_32), .ain4(aout4_32),
                    .win1(win33), .win2(win34), .win3(win35), .win4(win36),
                    .aout1(aout1_36), .aout2(aout2_36), .aout3(aout3_36), .aout4(aout4_36),
                    .wout1(wout4_33), .wout2(wout4_34), .wout3(wout4_35), .wout4(wout4_36),
                    .sout11(sout1_33), .sout12(sout1_34), .sout13(sout1_35), .sout14(sout1_36),
                    .sout21(sout2_33), .sout22(sout2_34), .sout23(sout2_35), .sout24(sout2_36),
                    .sout31(sout3_33), .sout32(sout3_34), .sout33(sout3_35), .sout34(sout3_36),
                    .sout41(sout4_33), .sout42(sout4_34), .sout43(sout4_35), .sout44(sout4_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_1_10 (.clk(clk), .rst(rst),
                    .ain1(aout1_36), .ain2(aout2_36), .ain3(aout3_36), .ain4(aout4_36),
                    .win1(win37), .win2(win38), .win3(win39), .win4(win40),
                    .aout1(aout1_40), .aout2(aout2_40), .aout3(aout3_40), .aout4(aout4_40),
                    .wout1(wout4_37), .wout2(wout4_38), .wout3(wout4_39), .wout4(wout4_40),
                    .sout11(sout1_37), .sout12(sout1_38), .sout13(sout1_39), .sout14(sout1_40),
                    .sout21(sout2_37), .sout22(sout2_38), .sout23(sout2_39), .sout24(sout2_40),
                    .sout31(sout3_37), .sout32(sout3_38), .sout33(sout3_39), .sout34(sout3_40),
                    .sout41(sout4_37), .sout42(sout4_38), .sout43(sout4_39), .sout44(sout4_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_1_11 (.clk(clk), .rst(rst),
                    .ain1(aout1_40), .ain2(aout2_40), .ain3(aout3_40), .ain4(aout4_40),
                    .win1(win41), .win2(win42), .win3(win43), .win4(win44),
                    .aout1(aout1_44), .aout2(aout2_44), .aout3(aout3_44), .aout4(aout4_44),
                    .wout1(wout4_41), .wout2(wout4_42), .wout3(wout4_43), .wout4(wout4_44),
                    .sout11(sout1_41), .sout12(sout1_42), .sout13(sout1_43), .sout14(sout1_44),
                    .sout21(sout2_41), .sout22(sout2_42), .sout23(sout2_43), .sout24(sout2_44),
                    .sout31(sout3_41), .sout32(sout3_42), .sout33(sout3_43), .sout34(sout3_44),
                    .sout41(sout4_41), .sout42(sout4_42), .sout43(sout4_43), .sout44(sout4_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_1_12 (.clk(clk), .rst(rst),
                    .ain1(aout1_44), .ain2(aout2_44), .ain3(aout3_44), .ain4(aout4_44),
                    .win1(win45), .win2(win46), .win3(win47), .win4(win48),
                    .aout1(aout1_48), .aout2(aout2_48), .aout3(aout3_48), .aout4(aout4_48),
                    .wout1(wout4_45), .wout2(wout4_46), .wout3(wout4_47), .wout4(wout4_48),
                    .sout11(sout1_45), .sout12(sout1_46), .sout13(sout1_47), .sout14(sout1_48),
                    .sout21(sout2_45), .sout22(sout2_46), .sout23(sout2_47), .sout24(sout2_48),
                    .sout31(sout3_45), .sout32(sout3_46), .sout33(sout3_47), .sout34(sout3_48),
                    .sout41(sout4_45), .sout42(sout4_46), .sout43(sout4_47), .sout44(sout4_48)
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
                                  
    mac_array_4x4 mac_array_4x4_29 (.clk(clk), .rst(rst),
                    .ain1(aout5_32), .ain2(aout6_32), .ain3(aout7_32), .ain4(aout8_32),
                    .win1(wout4_33), .win2(wout4_34), .win3(wout4_35), .win4(wout4_36),
                    .aout1(aout5_36), .aout2(aout6_36), .aout3(aout7_36), .aout4(aout8_36),
                    .wout1(wout8_33), .wout2(wout8_34), .wout3(wout8_35), .wout4(wout8_36),
                    .sout11(sout5_33), .sout12(sout5_34), .sout13(sout5_35), .sout14(sout5_36),
                    .sout21(sout6_33), .sout22(sout6_34), .sout23(sout6_35), .sout24(sout6_36),
                    .sout31(sout7_33), .sout32(sout7_34), .sout33(sout7_35), .sout34(sout7_36),
                    .sout41(sout8_33), .sout42(sout8_34), .sout43(sout8_35), .sout44(sout8_36)
                    ); //4x4 MAC array
        
                
    mac_array_4x4 mac_array_4x4_2_10 (.clk(clk), .rst(rst),
                    .ain1(aout5_36), .ain2(aout6_36), .ain3(aout7_36), .ain4(aout8_36),
                    .win1(wout4_37), .win2(wout4_38), .win3(wout4_39), .win4(wout4_40),
                    .aout1(aout5_40), .aout2(aout6_40), .aout3(aout7_40), .aout4(aout8_40),
                    .wout1(wout8_37), .wout2(wout8_38), .wout3(wout8_39), .wout4(wout8_40),
                    .sout11(sout5_37), .sout12(sout5_38), .sout13(sout5_39), .sout14(sout5_40),
                    .sout21(sout6_37), .sout22(sout6_38), .sout23(sout6_39), .sout24(sout6_40),
                    .sout31(sout7_37), .sout32(sout7_38), .sout33(sout7_39), .sout34(sout7_40),
                    .sout41(sout8_37), .sout42(sout8_38), .sout43(sout8_39), .sout44(sout8_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_2_11 (.clk(clk), .rst(rst),
                    .ain1(aout5_40), .ain2(aout6_40), .ain3(aout7_40), .ain4(aout8_40),
                    .win1(wout4_41), .win2(wout4_42), .win3(wout4_43), .win4(wout4_44),
                    .aout1(aout5_44), .aout2(aout6_44), .aout3(aout7_44), .aout4(aout8_44),
                    .wout1(wout8_41), .wout2(wout8_42), .wout3(wout8_43), .wout4(wout8_44),
                    .sout11(sout5_41), .sout12(sout5_42), .sout13(sout5_43), .sout14(sout5_44),
                    .sout21(sout6_41), .sout22(sout6_42), .sout23(sout6_43), .sout24(sout6_44),
                    .sout31(sout7_41), .sout32(sout7_42), .sout33(sout7_43), .sout34(sout7_44),
                    .sout41(sout8_41), .sout42(sout8_42), .sout43(sout8_43), .sout44(sout8_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_2_12 (.clk(clk), .rst(rst),
                    .ain1(aout5_44), .ain2(aout6_44), .ain3(aout7_44), .ain4(aout8_44),
                    .win1(wout4_45), .win2(wout4_46), .win3(wout4_47), .win4(wout4_48),
                    .aout1(aout5_48), .aout2(aout6_48), .aout3(aout7_48), .aout4(aout8_48),
                    .wout1(wout8_45), .wout2(wout8_46), .wout3(wout8_47), .wout4(wout8_48),
                    .sout11(sout5_45), .sout12(sout5_46), .sout13(sout5_47), .sout14(sout5_48),
                    .sout21(sout6_45), .sout22(sout6_46), .sout23(sout6_47), .sout24(sout6_48),
                    .sout31(sout7_45), .sout32(sout7_46), .sout33(sout7_47), .sout34(sout7_48),
                    .sout41(sout8_45), .sout42(sout8_46), .sout43(sout8_47), .sout44(sout8_48)
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
                    
    mac_array_4x4 mac_array_4x4_39 (.clk(clk), .rst(rst),
                    .ain1(aout9_32), .ain2(aout10_32), .ain3(aout11_32), .ain4(aout12_32),
                    .win1(wout8_33), .win2(wout8_34), .win3(wout8_35), .win4(wout8_36),
                    .aout1(aout9_36), .aout2(aout10_36), .aout3(aout11_36), .aout4(aout12_36),
                    .wout1(wout12_33), .wout2(wout12_34), .wout3(wout12_35), .wout4(wout12_36),
                    .sout11(sout9_33), .sout12(sout9_34), .sout13(sout9_35), .sout14(sout9_36),
                    .sout21(sout10_33), .sout22(sout10_34), .sout23(sout10_35), .sout24(sout10_36),
                    .sout31(sout11_33), .sout32(sout11_34), .sout33(sout11_35), .sout34(sout11_36),
                    .sout41(sout12_33), .sout42(sout12_34), .sout43(sout12_35), .sout44(sout12_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_3_10 (.clk(clk), .rst(rst),
                    .ain1(aout9_36), .ain2(aout10_36), .ain3(aout11_36), .ain4(aout12_36),
                    .win1(wout8_37), .win2(wout8_38), .win3(wout8_39), .win4(wout8_40),
                    .aout1(aout9_40), .aout2(aout10_40), .aout3(aout11_40), .aout4(aout12_40),
                    .wout1(wout12_37), .wout2(wout12_38), .wout3(wout12_39), .wout4(wout12_40),
                    .sout11(sout9_37), .sout12(sout9_38), .sout13(sout9_39), .sout14(sout9_40),
                    .sout21(sout10_37), .sout22(sout10_38), .sout23(sout10_39), .sout24(sout10_40),
                    .sout31(sout11_37), .sout32(sout11_38), .sout33(sout11_39), .sout34(sout11_40),
                    .sout41(sout12_37), .sout42(sout12_38), .sout43(sout12_39), .sout44(sout12_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_3_11 (.clk(clk), .rst(rst),
                    .ain1(aout9_40), .ain2(aout10_40), .ain3(aout11_40), .ain4(aout12_40),
                    .win1(wout8_41), .win2(wout8_42), .win3(wout8_43), .win4(wout8_44),
                    .aout1(aout9_44), .aout2(aout10_44), .aout3(aout11_44), .aout4(aout12_44),
                    .wout1(wout12_41), .wout2(wout12_42), .wout3(wout12_43), .wout4(wout12_44),
                    .sout11(sout9_41), .sout12(sout9_42), .sout13(sout9_43), .sout14(sout9_44),
                    .sout21(sout10_41), .sout22(sout10_42), .sout23(sout10_43), .sout24(sout10_44),
                    .sout31(sout11_41), .sout32(sout11_42), .sout33(sout11_43), .sout34(sout11_44),
                    .sout41(sout12_41), .sout42(sout12_42), .sout43(sout12_43), .sout44(sout12_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_3_12 (.clk(clk), .rst(rst),
                    .ain1(aout9_44), .ain2(aout10_44), .ain3(aout11_44), .ain4(aout12_44),
                    .win1(wout8_45), .win2(wout8_46), .win3(wout8_47), .win4(wout8_48),
                    .aout1(aout9_48), .aout2(aout10_48), .aout3(aout11_48), .aout4(aout12_48),
                    .wout1(wout12_45), .wout2(wout12_46), .wout3(wout12_47), .wout4(wout12_48),
                    .sout11(sout9_45), .sout12(sout9_46), .sout13(sout9_47), .sout14(sout9_48),
                    .sout21(sout10_45), .sout22(sout10_46), .sout23(sout10_47), .sout24(sout10_48),
                    .sout31(sout11_45), .sout32(sout11_46), .sout33(sout11_47), .sout34(sout11_48),
                    .sout41(sout12_45), .sout42(sout12_46), .sout43(sout12_47), .sout44(sout12_48)
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
                    
    mac_array_4x4 mac_array_4x4_49 (.clk(clk), .rst(rst),
                    .ain1(aout13_32), .ain2(aout14_32), .ain3(aout15_32), .ain4(aout16_32),
                    .win1(wout12_33), .win2(wout12_34), .win3(wout12_35), .win4(wout12_36),
                    .aout1(aout13_36), .aout2(aout14_36), .aout3(aout15_36), .aout4(aout16_36),
                    .wout1(wout16_33), .wout2(wout16_34), .wout3(wout16_35), .wout4(wout16_36),
                    .sout11(sout13_33), .sout12(sout13_34), .sout13(sout13_35), .sout14(sout13_36),
                    .sout21(sout14_33), .sout22(sout14_34), .sout23(sout14_35), .sout24(sout14_36),
                    .sout31(sout15_33), .sout32(sout15_34), .sout33(sout15_35), .sout34(sout15_36),
                    .sout41(sout16_33), .sout42(sout16_34), .sout43(sout16_35), .sout44(sout16_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_4_10 (.clk(clk), .rst(rst),
                    .ain1(aout13_36), .ain2(aout14_36), .ain3(aout15_36), .ain4(aout16_36),
                    .win1(wout12_37), .win2(wout12_38), .win3(wout12_39), .win4(wout12_40),
                    .aout1(aout13_40), .aout2(aout14_40), .aout3(aout15_40), .aout4(aout16_40),
                    .wout1(wout16_37), .wout2(wout16_38), .wout3(wout16_39), .wout4(wout16_40),
                    .sout11(sout13_37), .sout12(sout13_38), .sout13(sout13_39), .sout14(sout13_40),
                    .sout21(sout14_37), .sout22(sout14_38), .sout23(sout14_39), .sout24(sout14_40),
                    .sout31(sout15_37), .sout32(sout15_38), .sout33(sout15_39), .sout34(sout15_40),
                    .sout41(sout16_37), .sout42(sout16_38), .sout43(sout16_39), .sout44(sout16_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_4_11 (.clk(clk), .rst(rst),
                    .ain1(aout13_40), .ain2(aout14_40), .ain3(aout15_40), .ain4(aout16_40),
                    .win1(wout12_41), .win2(wout12_42), .win3(wout12_43), .win4(wout12_44),
                    .aout1(aout13_44), .aout2(aout14_44), .aout3(aout15_44), .aout4(aout16_44),
                    .wout1(wout16_41), .wout2(wout16_42), .wout3(wout16_43), .wout4(wout16_44),
                    .sout11(sout13_41), .sout12(sout13_42), .sout13(sout13_43), .sout14(sout13_44),
                    .sout21(sout14_41), .sout22(sout14_42), .sout23(sout14_43), .sout24(sout14_44),
                    .sout31(sout15_41), .sout32(sout15_42), .sout33(sout15_43), .sout34(sout15_44),
                    .sout41(sout16_41), .sout42(sout16_42), .sout43(sout16_43), .sout44(sout16_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_4_12 (.clk(clk), .rst(rst),
                    .ain1(aout13_44), .ain2(aout14_44), .ain3(aout15_44), .ain4(aout16_44),
                    .win1(wout12_45), .win2(wout12_46), .win3(wout12_47), .win4(wout12_48),
                    .aout1(aout13_48), .aout2(aout14_48), .aout3(aout15_48), .aout4(aout16_48),
                    .wout1(wout16_45), .wout2(wout16_46), .wout3(wout16_47), .wout4(wout16_48),
                    .sout11(sout13_45), .sout12(sout13_46), .sout13(sout13_47), .sout14(sout13_48),
                    .sout21(sout14_45), .sout22(sout14_46), .sout23(sout14_47), .sout24(sout14_48),
                    .sout31(sout15_45), .sout32(sout15_46), .sout33(sout15_47), .sout34(sout15_48),
                    .sout41(sout16_45), .sout42(sout16_46), .sout43(sout16_47), .sout44(sout16_48)
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
                    
    mac_array_4x4 mac_array_4x4_59 (.clk(clk), .rst(rst),
                    .ain1(aout17_32), .ain2(aout18_32), .ain3(aout19_32), .ain4(aout20_32),
                    .win1(wout16_33), .win2(wout16_34), .win3(wout16_35), .win4(wout16_36),
                    .aout1(aout17_36), .aout2(aout18_36), .aout3(aout19_36), .aout4(aout20_36),
                    .wout1(wout20_33), .wout2(wout20_34), .wout3(wout20_35), .wout4(wout20_36),
                    .sout11(sout17_33), .sout12(sout17_34), .sout13(sout17_35), .sout14(sout17_36),
                    .sout21(sout18_33), .sout22(sout18_34), .sout23(sout18_35), .sout24(sout18_36),
                    .sout31(sout19_33), .sout32(sout19_34), .sout33(sout19_35), .sout34(sout19_36),
                    .sout41(sout20_33), .sout42(sout20_34), .sout43(sout20_35), .sout44(sout20_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_5_10 (.clk(clk), .rst(rst),
                    .ain1(aout17_36), .ain2(aout18_36), .ain3(aout19_36), .ain4(aout20_36),
                    .win1(wout16_37), .win2(wout16_38), .win3(wout16_39), .win4(wout16_40),
                    .aout1(aout17_40), .aout2(aout18_40), .aout3(aout19_40), .aout4(aout20_40),
                    .wout1(wout20_37), .wout2(wout20_38), .wout3(wout20_39), .wout4(wout20_40),
                    .sout11(sout17_37), .sout12(sout17_38), .sout13(sout17_39), .sout14(sout17_40),
                    .sout21(sout18_37), .sout22(sout18_38), .sout23(sout18_39), .sout24(sout18_40),
                    .sout31(sout19_37), .sout32(sout19_38), .sout33(sout19_39), .sout34(sout19_40),
                    .sout41(sout20_37), .sout42(sout20_38), .sout43(sout20_39), .sout44(sout20_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_5_11 (.clk(clk), .rst(rst),
                    .ain1(aout17_40), .ain2(aout18_40), .ain3(aout19_40), .ain4(aout20_40),
                    .win1(wout16_41), .win2(wout16_42), .win3(wout16_43), .win4(wout16_44),
                    .aout1(aout17_44), .aout2(aout18_44), .aout3(aout19_44), .aout4(aout20_44),
                    .wout1(wout20_41), .wout2(wout20_42), .wout3(wout20_43), .wout4(wout20_44),
                    .sout11(sout17_41), .sout12(sout17_42), .sout13(sout17_43), .sout14(sout17_44),
                    .sout21(sout18_41), .sout22(sout18_42), .sout23(sout18_43), .sout24(sout18_44),
                    .sout31(sout19_41), .sout32(sout19_42), .sout33(sout19_43), .sout34(sout19_44),
                    .sout41(sout20_41), .sout42(sout20_42), .sout43(sout20_43), .sout44(sout20_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_5_12 (.clk(clk), .rst(rst),
                    .ain1(aout17_44), .ain2(aout18_44), .ain3(aout19_44), .ain4(aout20_44),
                    .win1(wout16_45), .win2(wout16_46), .win3(wout16_47), .win4(wout16_48),
                    .aout1(aout17_48), .aout2(aout18_48), .aout3(aout19_48), .aout4(aout20_48),
                    .wout1(wout20_45), .wout2(wout20_46), .wout3(wout20_47), .wout4(wout20_48),
                    .sout11(sout17_45), .sout12(sout17_46), .sout13(sout17_47), .sout14(sout17_48),
                    .sout21(sout18_45), .sout22(sout18_46), .sout23(sout18_47), .sout24(sout18_48),
                    .sout31(sout19_45), .sout32(sout19_46), .sout33(sout19_47), .sout34(sout19_48),
                    .sout41(sout20_45), .sout42(sout20_46), .sout43(sout20_47), .sout44(sout20_48)
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
                    
    mac_array_4x4 mac_array_4x4_69 (.clk(clk), .rst(rst),
                    .ain1(aout21_32), .ain2(aout22_32), .ain3(aout23_32), .ain4(aout24_32),
                    .win1(wout20_33), .win2(wout20_34), .win3(wout20_35), .win4(wout20_36),
                    .aout1(aout21_36), .aout2(aout22_36), .aout3(aout23_36), .aout4(aout24_36),
                    .wout1(wout24_33), .wout2(wout24_34), .wout3(wout24_35), .wout4(wout24_36),
                    .sout11(sout21_33), .sout12(sout21_34), .sout13(sout21_35), .sout14(sout21_36),
                    .sout21(sout22_33), .sout22(sout22_34), .sout23(sout22_35), .sout24(sout22_36),
                    .sout31(sout23_33), .sout32(sout23_34), .sout33(sout23_35), .sout34(sout23_36),
                    .sout41(sout24_33), .sout42(sout24_34), .sout43(sout24_35), .sout44(sout24_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_6_10 (.clk(clk), .rst(rst),
                    .ain1(aout21_36), .ain2(aout22_36), .ain3(aout23_36), .ain4(aout24_36),
                    .win1(wout20_37), .win2(wout20_38), .win3(wout20_39), .win4(wout20_40),
                    .aout1(aout21_40), .aout2(aout22_40), .aout3(aout23_40), .aout4(aout24_40),
                    .wout1(wout24_37), .wout2(wout24_38), .wout3(wout24_39), .wout4(wout24_40),
                    .sout11(sout21_37), .sout12(sout21_38), .sout13(sout21_39), .sout14(sout21_40),
                    .sout21(sout22_37), .sout22(sout22_38), .sout23(sout22_39), .sout24(sout22_40),
                    .sout31(sout23_37), .sout32(sout23_38), .sout33(sout23_39), .sout34(sout23_40),
                    .sout41(sout24_37), .sout42(sout24_38), .sout43(sout24_39), .sout44(sout24_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_6_11 (.clk(clk), .rst(rst),
                    .ain1(aout21_40), .ain2(aout22_40), .ain3(aout23_40), .ain4(aout24_40),
                    .win1(wout20_41), .win2(wout20_42), .win3(wout20_43), .win4(wout20_44),
                    .aout1(aout21_44), .aout2(aout22_44), .aout3(aout23_44), .aout4(aout24_44),
                    .wout1(wout24_41), .wout2(wout24_42), .wout3(wout24_43), .wout4(wout24_44),
                    .sout11(sout21_41), .sout12(sout21_42), .sout13(sout21_43), .sout14(sout21_44),
                    .sout21(sout22_41), .sout22(sout22_42), .sout23(sout22_43), .sout24(sout22_44),
                    .sout31(sout23_41), .sout32(sout23_42), .sout33(sout23_43), .sout34(sout23_44),
                    .sout41(sout24_41), .sout42(sout24_42), .sout43(sout24_43), .sout44(sout24_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_6_12 (.clk(clk), .rst(rst),
                    .ain1(aout21_44), .ain2(aout22_44), .ain3(aout23_44), .ain4(aout24_44),
                    .win1(wout20_45), .win2(wout20_46), .win3(wout20_47), .win4(wout20_48),
                    .aout1(aout21_48), .aout2(aout22_48), .aout3(aout23_48), .aout4(aout24_48),
                    .wout1(wout24_45), .wout2(wout24_46), .wout3(wout24_47), .wout4(wout24_48),
                    .sout11(sout21_45), .sout12(sout21_46), .sout13(sout21_47), .sout14(sout21_48),
                    .sout21(sout22_45), .sout22(sout22_46), .sout23(sout22_47), .sout24(sout22_48),
                    .sout31(sout23_45), .sout32(sout23_46), .sout33(sout23_47), .sout34(sout23_48),
                    .sout41(sout24_45), .sout42(sout24_46), .sout43(sout24_47), .sout44(sout24_48)
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
                    
    mac_array_4x4 mac_array_4x4_79 (.clk(clk), .rst(rst),
                    .ain1(aout25_32), .ain2(aout26_32), .ain3(aout27_32), .ain4(aout28_32),
                    .win1(wout24_33), .win2(wout24_34), .win3(wout24_35), .win4(wout24_36),
                    .aout1(aout25_36), .aout2(aout26_36), .aout3(aout27_36), .aout4(aout28_36),
                    .wout1(wout28_33), .wout2(wout28_34), .wout3(wout28_35), .wout4(wout28_36),
                    .sout11(sout25_33), .sout12(sout25_34), .sout13(sout25_35), .sout14(sout25_36),
                    .sout21(sout26_33), .sout22(sout26_34), .sout23(sout26_35), .sout24(sout26_36),
                    .sout31(sout27_33), .sout32(sout27_34), .sout33(sout27_35), .sout34(sout27_36),
                    .sout41(sout28_33), .sout42(sout28_34), .sout43(sout28_35), .sout44(sout28_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_7_10 (.clk(clk), .rst(rst),
                    .ain1(aout25_36), .ain2(aout26_36), .ain3(aout27_36), .ain4(aout28_36),
                    .win1(wout24_37), .win2(wout24_38), .win3(wout24_39), .win4(wout24_40),
                    .aout1(aout25_40), .aout2(aout26_40), .aout3(aout27_40), .aout4(aout28_40),
                    .wout1(wout28_37), .wout2(wout28_38), .wout3(wout28_39), .wout4(wout28_40),
                    .sout11(sout25_37), .sout12(sout25_38), .sout13(sout25_39), .sout14(sout25_40),
                    .sout21(sout26_37), .sout22(sout26_38), .sout23(sout26_39), .sout24(sout26_40),
                    .sout31(sout27_37), .sout32(sout27_38), .sout33(sout27_39), .sout34(sout27_40),
                    .sout41(sout28_37), .sout42(sout28_38), .sout43(sout28_39), .sout44(sout28_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_7_11 (.clk(clk), .rst(rst),
                    .ain1(aout25_40), .ain2(aout26_40), .ain3(aout27_40), .ain4(aout28_40),
                    .win1(wout24_41), .win2(wout24_42), .win3(wout24_43), .win4(wout24_44),
                    .aout1(aout25_44), .aout2(aout26_44), .aout3(aout27_44), .aout4(aout28_44),
                    .wout1(wout28_41), .wout2(wout28_42), .wout3(wout28_43), .wout4(wout28_44),
                    .sout11(sout25_41), .sout12(sout25_42), .sout13(sout25_43), .sout14(sout25_44),
                    .sout21(sout26_41), .sout22(sout26_42), .sout23(sout26_43), .sout24(sout26_44),
                    .sout31(sout27_41), .sout32(sout27_42), .sout33(sout27_43), .sout34(sout27_44),
                    .sout41(sout28_41), .sout42(sout28_42), .sout43(sout28_43), .sout44(sout28_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_7_12 (.clk(clk), .rst(rst),
                    .ain1(aout25_44), .ain2(aout26_44), .ain3(aout27_44), .ain4(aout28_44),
                    .win1(wout24_45), .win2(wout24_46), .win3(wout24_47), .win4(wout24_48),
                    .aout1(aout25_48), .aout2(aout26_48), .aout3(aout27_48), .aout4(aout28_48),
                    .wout1(wout28_45), .wout2(wout28_46), .wout3(wout28_47), .wout4(wout28_48),
                    .sout11(sout25_45), .sout12(sout25_46), .sout13(sout25_47), .sout14(sout25_48),
                    .sout21(sout26_45), .sout22(sout26_46), .sout23(sout26_47), .sout24(sout26_48),
                    .sout31(sout27_45), .sout32(sout27_46), .sout33(sout27_47), .sout34(sout27_48),
                    .sout41(sout28_45), .sout42(sout28_46), .sout43(sout28_47), .sout44(sout28_48)
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
                    
    mac_array_4x4 mac_array_4x4_89 (.clk(clk), .rst(rst),
                    .ain1(aout29_32), .ain2(aout30_32), .ain3(aout31_32), .ain4(aout32_32),
                    .win1(wout28_33), .win2(wout28_34), .win3(wout28_35), .win4(wout28_36),
                    .aout1(aout29_36), .aout2(aout30_36), .aout3(aout31_36), .aout4(aout32_36),
                    .wout1(wout32_33), .wout2(wout32_34), .wout3(wout32_35), .wout4(wout32_36),
                    .sout11(sout29_33), .sout12(sout29_34), .sout13(sout29_35), .sout14(sout29_36),
                    .sout21(sout30_33), .sout22(sout30_34), .sout23(sout30_35), .sout24(sout30_36),
                    .sout31(sout31_33), .sout32(sout31_34), .sout33(sout31_35), .sout34(sout31_36),
                    .sout41(sout32_33), .sout42(sout32_34), .sout43(sout32_35), .sout44(sout32_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_8_10 (.clk(clk), .rst(rst),
                    .ain1(aout29_36), .ain2(aout30_36), .ain3(aout31_36), .ain4(aout32_36),
                    .win1(wout28_37), .win2(wout28_38), .win3(wout28_39), .win4(wout28_40),
                    .aout1(aout29_40), .aout2(aout30_40), .aout3(aout31_40), .aout4(aout32_40),
                    .wout1(wout32_37), .wout2(wout32_38), .wout3(wout32_39), .wout4(wout32_40),
                    .sout11(sout29_37), .sout12(sout29_38), .sout13(sout29_39), .sout14(sout29_40),
                    .sout21(sout30_37), .sout22(sout30_38), .sout23(sout30_39), .sout24(sout30_40),
                    .sout31(sout31_37), .sout32(sout31_38), .sout33(sout31_39), .sout34(sout31_40),
                    .sout41(sout32_37), .sout42(sout32_38), .sout43(sout32_39), .sout44(sout32_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_8_11 (.clk(clk), .rst(rst),
                    .ain1(aout29_40), .ain2(aout30_40), .ain3(aout31_40), .ain4(aout32_40),
                    .win1(wout28_41), .win2(wout28_42), .win3(wout28_43), .win4(wout28_44),
                    .aout1(aout29_44), .aout2(aout30_44), .aout3(aout31_44), .aout4(aout32_44),
                    .wout1(wout32_41), .wout2(wout32_42), .wout3(wout32_43), .wout4(wout32_44),
                    .sout11(sout29_41), .sout12(sout29_42), .sout13(sout29_43), .sout14(sout29_44),
                    .sout21(sout30_41), .sout22(sout30_42), .sout23(sout30_43), .sout24(sout30_44),
                    .sout31(sout31_41), .sout32(sout31_42), .sout33(sout31_43), .sout34(sout31_44),
                    .sout41(sout32_41), .sout42(sout32_42), .sout43(sout32_43), .sout44(sout32_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_8_12 (.clk(clk), .rst(rst),
                    .ain1(aout29_44), .ain2(aout30_44), .ain3(aout31_44), .ain4(aout32_44),
                    .win1(wout28_45), .win2(wout28_46), .win3(wout28_47), .win4(wout28_48),
                    .aout1(aout29_48), .aout2(aout30_48), .aout3(aout31_48), .aout4(aout32_48),
                    .wout1(wout32_45), .wout2(wout32_46), .wout3(wout32_47), .wout4(wout32_48),
                    .sout11(sout29_45), .sout12(sout29_46), .sout13(sout29_47), .sout14(sout29_48),
                    .sout21(sout30_45), .sout22(sout30_46), .sout23(sout30_47), .sout24(sout30_48),
                    .sout31(sout31_45), .sout32(sout31_46), .sout33(sout31_47), .sout34(sout31_48),
                    .sout41(sout32_45), .sout42(sout32_46), .sout43(sout32_47), .sout44(sout32_48)
                    ); //4x4 MAC array
                    
    //row9   
    mac_array_4x4 mac_array_4x4_91 (.clk(clk), .rst(rst),
                    .ain1(ain33), .ain2(ain34), .ain3(ain35), .ain4(ain36),
                    .win1(wout32_1), .win2(wout32_2), .win3(wout32_3), .win4(wout32_4),
                    .aout1(aout33_4), .aout2(aout34_4), .aout3(aout35_4), .aout4(aout36_4),
                    .wout1(wout36_1), .wout2(wout36_2), .wout3(wout36_3), .wout4(wout36_4),
                    .sout11(sout33_1), .sout12(sout33_2), .sout13(sout33_3), .sout14(sout33_4),
                    .sout21(sout34_1), .sout22(sout34_2), .sout23(sout34_3), .sout24(sout34_4),
                    .sout31(sout35_1), .sout32(sout35_2), .sout33(sout35_3), .sout34(sout35_4),
                    .sout41(sout36_1), .sout42(sout36_2), .sout43(sout36_3), .sout44(sout36_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_92 (.clk(clk), .rst(rst),
                    .ain1(aout33_4), .ain2(aout34_4), .ain3(aout35_4), .ain4(aout36_4),
                    .win1(wout32_5), .win2(wout32_6), .win3(wout32_7), .win4(wout32_8),
                    .aout1(aout33_8), .aout2(aout34_8), .aout3(aout35_8), .aout4(aout36_8),
                    .wout1(wout36_5), .wout2(wout36_6), .wout3(wout36_7), .wout4(wout36_8),
                    .sout11(sout33_5), .sout12(sout33_6), .sout13(sout33_7), .sout14(sout33_8),
                    .sout21(sout34_5), .sout22(sout34_6), .sout23(sout34_7), .sout24(sout34_8),
                    .sout31(sout35_5), .sout32(sout35_6), .sout33(sout35_7), .sout34(sout35_8),
                    .sout41(sout36_5), .sout42(sout36_6), .sout43(sout36_7), .sout44(sout36_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_93 (.clk(clk), .rst(rst),
                    .ain1(aout33_8), .ain2(aout34_8), .ain3(aout35_8), .ain4(aout36_8),
                    .win1(wout32_9), .win2(wout32_10), .win3(wout32_11), .win4(wout32_12),
                    .aout1(aout33_12), .aout2(aout34_12), .aout3(aout35_12), .aout4(aout36_12),
                    .wout1(wout36_9), .wout2(wout36_10), .wout3(wout36_11), .wout4(wout36_12),
                    .sout11(sout33_9), .sout12(sout33_10), .sout13(sout33_11), .sout14(sout33_12),
                    .sout21(sout34_9), .sout22(sout34_10), .sout23(sout34_11), .sout24(sout34_12),
                    .sout31(sout35_9), .sout32(sout35_10), .sout33(sout35_11), .sout34(sout35_12),
                    .sout41(sout36_9), .sout42(sout36_10), .sout43(sout36_11), .sout44(sout36_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_94 (.clk(clk), .rst(rst),
                    .ain1(aout33_12), .ain2(aout34_12), .ain3(aout35_12), .ain4(aout36_12),
                    .win1(wout32_13), .win2(wout32_14), .win3(wout32_15), .win4(wout32_16),
                    .aout1(aout33_16), .aout2(aout34_16), .aout3(aout35_16), .aout4(aout36_16),
                    .wout1(wout36_13), .wout2(wout36_14), .wout3(wout36_15), .wout4(wout36_16),
                    .sout11(sout33_13), .sout12(sout33_14), .sout13(sout33_15), .sout14(sout33_16),
                    .sout21(sout34_13), .sout22(sout34_14), .sout23(sout34_15), .sout24(sout34_16),
                    .sout31(sout35_13), .sout32(sout35_14), .sout33(sout35_15), .sout34(sout35_16),
                    .sout41(sout36_13), .sout42(sout36_14), .sout43(sout36_15), .sout44(sout36_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_95 (.clk(clk), .rst(rst),
                    .ain1(aout33_16), .ain2(aout34_16), .ain3(aout35_16), .ain4(aout36_16),
                    .win1(wout32_17), .win2(wout32_18), .win3(wout32_19), .win4(wout32_20),
                    .aout1(aout33_20), .aout2(aout34_20), .aout3(aout35_20), .aout4(aout36_20),
                    .wout1(wout36_17), .wout2(wout36_18), .wout3(wout36_19), .wout4(wout36_20),
                    .sout11(sout33_17), .sout12(sout33_18), .sout13(sout33_19), .sout14(sout33_20),
                    .sout21(sout34_17), .sout22(sout34_18), .sout23(sout34_19), .sout24(sout34_20),
                    .sout31(sout35_17), .sout32(sout35_18), .sout33(sout35_19), .sout34(sout35_20),
                    .sout41(sout36_17), .sout42(sout36_18), .sout43(sout36_19), .sout44(sout36_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_96 (.clk(clk), .rst(rst),
                    .ain1(aout33_20), .ain2(aout34_20), .ain3(aout35_20), .ain4(aout36_20),
                    .win1(wout32_21), .win2(wout32_22), .win3(wout32_23), .win4(wout32_24),
                    .aout1(aout33_24), .aout2(aout34_24), .aout3(aout35_24), .aout4(aout36_24),
                    .wout1(wout36_21), .wout2(wout36_22), .wout3(wout36_23), .wout4(wout36_24),
                    .sout11(sout33_21), .sout12(sout33_22), .sout13(sout33_23), .sout14(sout33_24),
                    .sout21(sout34_21), .sout22(sout34_22), .sout23(sout34_23), .sout24(sout34_24),
                    .sout31(sout35_21), .sout32(sout35_22), .sout33(sout35_23), .sout34(sout35_24),
                    .sout41(sout36_21), .sout42(sout36_22), .sout43(sout36_23), .sout44(sout36_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_97 (.clk(clk), .rst(rst),
                    .ain1(aout33_24), .ain2(aout34_24), .ain3(aout35_24), .ain4(aout36_24),
                    .win1(wout32_25), .win2(wout32_26), .win3(wout32_27), .win4(wout32_28),
                    .aout1(aout33_28), .aout2(aout34_28), .aout3(aout35_28), .aout4(aout36_28),
                    .wout1(wout36_25), .wout2(wout36_26), .wout3(wout36_27), .wout4(wout36_28),
                    .sout11(sout33_25), .sout12(sout33_26), .sout13(sout33_27), .sout14(sout33_28),
                    .sout21(sout34_25), .sout22(sout34_26), .sout23(sout34_27), .sout24(sout34_28),
                    .sout31(sout35_25), .sout32(sout35_26), .sout33(sout35_27), .sout34(sout35_28),
                    .sout41(sout36_25), .sout42(sout36_26), .sout43(sout36_27), .sout44(sout36_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_98 (.clk(clk), .rst(rst),
                    .ain1(aout33_28), .ain2(aout34_28), .ain3(aout35_28), .ain4(aout36_28),
                    .win1(wout32_29), .win2(wout32_30), .win3(wout32_31), .win4(wout32_32),
                    .aout1(aout33_32), .aout2(aout34_32), .aout3(aout35_32), .aout4(aout36_32),
                    .wout1(wout36_29), .wout2(wout36_30), .wout3(wout36_31), .wout4(wout36_32),
                    .sout11(sout33_29), .sout12(sout33_30), .sout13(sout33_31), .sout14(sout33_32),
                    .sout21(sout34_29), .sout22(sout34_30), .sout23(sout34_31), .sout24(sout34_32),
                    .sout31(sout35_29), .sout32(sout35_30), .sout33(sout35_31), .sout34(sout35_32),
                    .sout41(sout36_29), .sout42(sout36_30), .sout43(sout36_31), .sout44(sout36_32)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_99 (.clk(clk), .rst(rst),
                    .ain1(aout33_32), .ain2(aout34_32), .ain3(aout35_32), .ain4(aout36_32),
                    .win1(wout32_33), .win2(wout32_34), .win3(wout32_35), .win4(wout32_36),
                    .aout1(aout33_36), .aout2(aout34_36), .aout3(aout35_36), .aout4(aout36_36),
                    .wout1(wout36_33), .wout2(wout36_34), .wout3(wout36_35), .wout4(wout36_36),
                    .sout11(sout33_33), .sout12(sout33_34), .sout13(sout33_35), .sout14(sout33_36),
                    .sout21(sout34_33), .sout22(sout34_34), .sout23(sout34_35), .sout24(sout34_36),
                    .sout31(sout35_33), .sout32(sout35_34), .sout33(sout35_35), .sout34(sout35_36),
                    .sout41(sout36_33), .sout42(sout36_34), .sout43(sout36_35), .sout44(sout36_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_9_10 (.clk(clk), .rst(rst),
                    .ain1(aout33_36), .ain2(aout34_36), .ain3(aout35_36), .ain4(aout36_36),
                    .win1(wout32_37), .win2(wout32_38), .win3(wout32_39), .win4(wout32_40),
                    .aout1(aout33_40), .aout2(aout34_40), .aout3(aout35_40), .aout4(aout36_40),
                    .wout1(wout36_37), .wout2(wout36_38), .wout3(wout36_39), .wout4(wout36_40),
                    .sout11(sout33_37), .sout12(sout33_38), .sout13(sout33_39), .sout14(sout33_40),
                    .sout21(sout34_37), .sout22(sout34_38), .sout23(sout34_39), .sout24(sout34_40),
                    .sout31(sout35_37), .sout32(sout35_38), .sout33(sout35_39), .sout34(sout35_40),
                    .sout41(sout36_37), .sout42(sout36_38), .sout43(sout36_39), .sout44(sout36_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_9_11 (.clk(clk), .rst(rst),
                    .ain1(aout33_40), .ain2(aout34_40), .ain3(aout35_40), .ain4(aout36_40),
                    .win1(wout32_41), .win2(wout32_42), .win3(wout32_43), .win4(wout32_44),
                    .aout1(aout33_44), .aout2(aout34_44), .aout3(aout35_44), .aout4(aout36_44),
                    .wout1(wout36_41), .wout2(wout36_42), .wout3(wout36_43), .wout4(wout36_44),
                    .sout11(sout33_41), .sout12(sout33_42), .sout13(sout33_43), .sout14(sout33_44),
                    .sout21(sout34_41), .sout22(sout34_42), .sout23(sout34_43), .sout24(sout34_44),
                    .sout31(sout35_41), .sout32(sout35_42), .sout33(sout35_43), .sout34(sout35_44),
                    .sout41(sout36_41), .sout42(sout36_42), .sout43(sout36_43), .sout44(sout36_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_9_12 (.clk(clk), .rst(rst),
                    .ain1(aout33_44), .ain2(aout34_44), .ain3(aout35_44), .ain4(aout36_44),
                    .win1(wout32_45), .win2(wout32_46), .win3(wout32_47), .win4(wout32_48),
                    .aout1(aout33_48), .aout2(aout34_48), .aout3(aout35_48), .aout4(aout36_48),
                    .wout1(wout36_45), .wout2(wout36_46), .wout3(wout36_47), .wout4(wout36_48),
                    .sout11(sout33_45), .sout12(sout33_46), .sout13(sout33_47), .sout14(sout33_48),
                    .sout21(sout34_45), .sout22(sout34_46), .sout23(sout34_47), .sout24(sout34_48),
                    .sout31(sout35_45), .sout32(sout35_46), .sout33(sout35_47), .sout34(sout35_48),
                    .sout41(sout36_45), .sout42(sout36_46), .sout43(sout36_47), .sout44(sout36_48)
                    ); //4x4 MAC array
                 
    //row10
    mac_array_4x4 mac_array_4x4_10_1 (.clk(clk), .rst(rst),
                    .ain1(ain37), .ain2(ain38), .ain3(ain39), .ain4(ain40),
                    .win1(wout36_1), .win2(wout36_2), .win3(wout36_3), .win4(wout36_4),
                    .aout1(aout37_4), .aout2(aout38_4), .aout3(aout39_4), .aout4(aout40_4),
                    .wout1(wout40_1), .wout2(wout40_2), .wout3(wout40_3), .wout4(wout40_4),
                    .sout11(sout37_1), .sout12(sout37_2), .sout13(sout37_3), .sout14(sout37_4),
                    .sout21(sout38_1), .sout22(sout38_2), .sout23(sout38_3), .sout24(sout38_4),
                    .sout31(sout39_1), .sout32(sout39_2), .sout33(sout39_3), .sout34(sout39_4),
                    .sout41(sout40_1), .sout42(sout40_2), .sout43(sout40_3), .sout44(sout40_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_10_2 (.clk(clk), .rst(rst),
                    .ain1(aout37_4), .ain2(aout38_4), .ain3(aout39_4), .ain4(aout40_4),
                    .win1(wout36_5), .win2(wout36_6), .win3(wout36_7), .win4(wout36_8),
                    .aout1(aout37_8), .aout2(aout38_8), .aout3(aout39_8), .aout4(aout40_8),
                    .wout1(wout40_5), .wout2(wout40_6), .wout3(wout40_7), .wout4(wout40_8),
                    .sout11(sout37_5), .sout12(sout37_6), .sout13(sout37_7), .sout14(sout37_8),
                    .sout21(sout38_5), .sout22(sout38_6), .sout23(sout38_7), .sout24(sout38_8),
                    .sout31(sout39_5), .sout32(sout39_6), .sout33(sout39_7), .sout34(sout39_8),
                    .sout41(sout40_5), .sout42(sout40_6), .sout43(sout40_7), .sout44(sout40_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_10_3 (.clk(clk), .rst(rst),
                    .ain1(aout37_8), .ain2(aout38_8), .ain3(aout39_8), .ain4(aout40_8),
                    .win1(wout36_9), .win2(wout36_10), .win3(wout36_11), .win4(wout36_12),
                    .aout1(aout37_12), .aout2(aout38_12), .aout3(aout39_12), .aout4(aout40_12),
                    .wout1(wout40_9), .wout2(wout40_10), .wout3(wout40_11), .wout4(wout40_12),
                    .sout11(sout37_9), .sout12(sout37_10), .sout13(sout37_11), .sout14(sout37_12),
                    .sout21(sout38_9), .sout22(sout38_10), .sout23(sout38_11), .sout24(sout38_12),
                    .sout31(sout39_9), .sout32(sout39_10), .sout33(sout39_11), .sout34(sout39_12),
                    .sout41(sout40_9), .sout42(sout40_10), .sout43(sout40_11), .sout44(sout40_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_4 (.clk(clk), .rst(rst),
                    .ain1(aout37_12), .ain2(aout38_12), .ain3(aout39_12), .ain4(aout40_12),
                    .win1(wout36_13), .win2(wout36_14), .win3(wout36_15), .win4(wout36_16),
                    .aout1(aout37_16), .aout2(aout38_16), .aout3(aout39_16), .aout4(aout40_16),
                    .wout1(wout40_13), .wout2(wout40_14), .wout3(wout40_15), .wout4(wout40_16),
                    .sout11(sout37_13), .sout12(sout37_14), .sout13(sout37_15), .sout14(sout37_16),
                    .sout21(sout38_13), .sout22(sout38_14), .sout23(sout38_15), .sout24(sout38_16),
                    .sout31(sout39_13), .sout32(sout39_14), .sout33(sout39_15), .sout34(sout39_16),
                    .sout41(sout40_13), .sout42(sout40_14), .sout43(sout40_15), .sout44(sout40_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_5 (.clk(clk), .rst(rst),
                    .ain1(aout37_16), .ain2(aout38_16), .ain3(aout39_16), .ain4(aout40_16),
                    .win1(wout36_17), .win2(wout36_18), .win3(wout36_19), .win4(wout36_20),
                    .aout1(aout37_20), .aout2(aout38_20), .aout3(aout39_20), .aout4(aout40_20),
                    .wout1(wout40_17), .wout2(wout40_18), .wout3(wout40_19), .wout4(wout40_20),
                    .sout11(sout37_17), .sout12(sout37_18), .sout13(sout37_19), .sout14(sout37_20),
                    .sout21(sout38_17), .sout22(sout38_18), .sout23(sout38_19), .sout24(sout38_20),
                    .sout31(sout39_17), .sout32(sout39_18), .sout33(sout39_19), .sout34(sout39_20),
                    .sout41(sout40_17), .sout42(sout40_18), .sout43(sout40_19), .sout44(sout40_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_10_6 (.clk(clk), .rst(rst),
                    .ain1(aout37_20), .ain2(aout38_20), .ain3(aout39_20), .ain4(aout40_20),
                    .win1(wout36_21), .win2(wout36_22), .win3(wout36_23), .win4(wout36_24),
                    .aout1(aout37_24), .aout2(aout38_24), .aout3(aout39_24), .aout4(aout40_24),
                    .wout1(wout40_21), .wout2(wout40_22), .wout3(wout40_23), .wout4(wout40_24),
                    .sout11(sout37_21), .sout12(sout37_22), .sout13(sout37_23), .sout14(sout37_24),
                    .sout21(sout38_21), .sout22(sout38_22), .sout23(sout38_23), .sout24(sout38_24),
                    .sout31(sout39_21), .sout32(sout39_22), .sout33(sout39_23), .sout34(sout39_24),
                    .sout41(sout40_21), .sout42(sout40_22), .sout43(sout40_23), .sout44(sout40_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_7 (.clk(clk), .rst(rst),
                    .ain1(aout37_24), .ain2(aout38_24), .ain3(aout39_24), .ain4(aout40_24),
                    .win1(wout36_25), .win2(wout36_26), .win3(wout36_27), .win4(wout36_28),
                    .aout1(aout37_28), .aout2(aout38_28), .aout3(aout39_28), .aout4(aout40_28),
                    .wout1(wout40_25), .wout2(wout40_26), .wout3(wout40_27), .wout4(wout40_28),
                    .sout11(sout37_25), .sout12(sout37_26), .sout13(sout37_27), .sout14(sout37_28),
                    .sout21(sout38_25), .sout22(sout38_26), .sout23(sout38_27), .sout24(sout38_28),
                    .sout31(sout39_25), .sout32(sout39_26), .sout33(sout39_27), .sout34(sout39_28),
                    .sout41(sout40_25), .sout42(sout40_26), .sout43(sout40_27), .sout44(sout40_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_10_8 (.clk(clk), .rst(rst),
                    .ain1(aout37_28), .ain2(aout38_28), .ain3(aout39_28), .ain4(aout40_28),
                    .win1(wout36_29), .win2(wout36_30), .win3(wout36_31), .win4(wout36_32),
                    .aout1(aout37_32), .aout2(aout38_32), .aout3(aout39_32), .aout4(aout40_32),
                    .wout1(wout40_29), .wout2(wout40_30), .wout3(wout40_31), .wout4(wout40_32),
                    .sout11(sout37_29), .sout12(sout37_30), .sout13(sout37_31), .sout14(sout37_32),
                    .sout21(sout38_29), .sout22(sout38_30), .sout23(sout38_31), .sout24(sout38_32),
                    .sout31(sout39_29), .sout32(sout39_30), .sout33(sout39_31), .sout34(sout39_32),
                    .sout41(sout40_29), .sout42(sout40_30), .sout43(sout40_31), .sout44(sout40_32)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_9 (.clk(clk), .rst(rst),
                    .ain1(aout37_32), .ain2(aout38_32), .ain3(aout39_32), .ain4(aout40_32),
                    .win1(wout36_33), .win2(wout36_34), .win3(wout36_35), .win4(wout36_36),
                    .aout1(aout37_36), .aout2(aout38_36), .aout3(aout39_36), .aout4(aout40_36),
                    .wout1(wout40_33), .wout2(wout40_34), .wout3(wout40_35), .wout4(wout40_36),
                    .sout11(sout37_33), .sout12(sout37_34), .sout13(sout37_35), .sout14(sout37_36),
                    .sout21(sout38_33), .sout22(sout38_34), .sout23(sout38_35), .sout24(sout38_36),
                    .sout31(sout39_33), .sout32(sout39_34), .sout33(sout39_35), .sout34(sout39_36),
                    .sout41(sout40_33), .sout42(sout40_34), .sout43(sout40_35), .sout44(sout40_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_10 (.clk(clk), .rst(rst),
                    .ain1(aout37_36), .ain2(aout38_36), .ain3(aout39_36), .ain4(aout40_36),
                    .win1(wout36_37), .win2(wout36_38), .win3(wout36_39), .win4(wout36_40),
                    .aout1(aout37_40), .aout2(aout38_40), .aout3(aout39_40), .aout4(aout40_40),
                    .wout1(wout40_37), .wout2(wout40_38), .wout3(wout40_39), .wout4(wout40_40),
                    .sout11(sout37_37), .sout12(sout37_38), .sout13(sout37_39), .sout14(sout37_40),
                    .sout21(sout38_37), .sout22(sout38_38), .sout23(sout38_39), .sout24(sout38_40),
                    .sout31(sout39_37), .sout32(sout39_38), .sout33(sout39_39), .sout34(sout39_40),
                    .sout41(sout40_37), .sout42(sout40_38), .sout43(sout40_39), .sout44(sout40_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_11 (.clk(clk), .rst(rst),
                    .ain1(aout37_40), .ain2(aout38_40), .ain3(aout39_40), .ain4(aout40_40),
                    .win1(wout36_41), .win2(wout36_42), .win3(wout36_43), .win4(wout36_44),
                    .aout1(aout37_44), .aout2(aout38_44), .aout3(aout39_44), .aout4(aout40_44),
                    .wout1(wout40_41), .wout2(wout40_42), .wout3(wout40_43), .wout4(wout40_44),
                    .sout11(sout37_41), .sout12(sout37_42), .sout13(sout37_43), .sout14(sout37_44),
                    .sout21(sout38_41), .sout22(sout38_42), .sout23(sout38_43), .sout24(sout38_44),
                    .sout31(sout39_41), .sout32(sout39_42), .sout33(sout39_43), .sout34(sout39_44),
                    .sout41(sout40_41), .sout42(sout40_42), .sout43(sout40_43), .sout44(sout40_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_10_12 (.clk(clk), .rst(rst),
                    .ain1(aout37_44), .ain2(aout38_44), .ain3(aout39_44), .ain4(aout40_44),
                    .win1(wout36_45), .win2(wout36_46), .win3(wout36_47), .win4(wout36_48),
                    .aout1(aout37_48), .aout2(aout38_48), .aout3(aout39_48), .aout4(aout40_48),
                    .wout1(wout40_45), .wout2(wout40_46), .wout3(wout40_47), .wout4(wout40_48),
                    .sout11(sout37_45), .sout12(sout37_46), .sout13(sout37_47), .sout14(sout37_48),
                    .sout21(sout38_45), .sout22(sout38_46), .sout23(sout38_47), .sout24(sout38_48),
                    .sout31(sout39_45), .sout32(sout39_46), .sout33(sout39_47), .sout34(sout39_48),
                    .sout41(sout40_45), .sout42(sout40_46), .sout43(sout40_47), .sout44(sout40_48)
                    ); //4x4 MAC array
    
                    
    //row11
    mac_array_4x4 mac_array_4x4_11_1 (.clk(clk), .rst(rst),
                    .ain1(ain41), .ain2(ain42), .ain3(ain43), .ain4(ain44),
                    .win1(wout40_1), .win2(wout40_2), .win3(wout40_3), .win4(wout40_4),
                    .aout1(aout41_4), .aout2(aout42_4), .aout3(aout43_4), .aout4(aout44_4),
                    .wout1(wout44_1), .wout2(wout44_2), .wout3(wout44_3), .wout4(wout44_4),
                    .sout11(sout41_1), .sout12(sout41_2), .sout13(sout41_3), .sout14(sout41_4),
                    .sout21(sout42_1), .sout22(sout42_2), .sout23(sout42_3), .sout24(sout42_4),
                    .sout31(sout43_1), .sout32(sout43_2), .sout33(sout43_3), .sout34(sout43_4),
                    .sout41(sout44_1), .sout42(sout44_2), .sout43(sout44_3), .sout44(sout44_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_11_2 (.clk(clk), .rst(rst),
                    .ain1(aout41_4), .ain2(aout42_4), .ain3(aout43_4), .ain4(aout44_4),
                    .win1(wout40_5), .win2(wout40_6), .win3(wout40_7), .win4(wout40_8),
                    .aout1(aout41_8), .aout2(aout42_8), .aout3(aout43_8), .aout4(aout44_8),
                    .wout1(wout44_5), .wout2(wout44_6), .wout3(wout44_7), .wout4(wout44_8),
                    .sout11(sout41_5), .sout12(sout41_6), .sout13(sout41_7), .sout14(sout41_8),
                    .sout21(sout42_5), .sout22(sout42_6), .sout23(sout42_7), .sout24(sout42_8),
                    .sout31(sout43_5), .sout32(sout43_6), .sout33(sout43_7), .sout34(sout43_8),
                    .sout41(sout44_5), .sout42(sout44_6), .sout43(sout44_7), .sout44(sout44_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_11_3 (.clk(clk), .rst(rst),
                    .ain1(aout41_8), .ain2(aout42_8), .ain3(aout43_8), .ain4(aout44_8),
                    .win1(wout40_9), .win2(wout40_10), .win3(wout40_11), .win4(wout40_12),
                    .aout1(aout41_12), .aout2(aout42_12), .aout3(aout43_12), .aout4(aout44_12),
                    .wout1(wout44_9), .wout2(wout44_10), .wout3(wout44_11), .wout4(wout44_12),
                    .sout11(sout41_9), .sout12(sout41_10), .sout13(sout41_11), .sout14(sout41_12),
                    .sout21(sout42_9), .sout22(sout42_10), .sout23(sout42_11), .sout24(sout42_12),
                    .sout31(sout43_9), .sout32(sout43_10), .sout33(sout43_11), .sout34(sout43_12),
                    .sout41(sout44_9), .sout42(sout44_10), .sout43(sout44_11), .sout44(sout44_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_4 (.clk(clk), .rst(rst),
                    .ain1(aout41_12), .ain2(aout42_12), .ain3(aout43_12), .ain4(aout44_12),
                    .win1(wout40_13), .win2(wout40_14), .win3(wout40_15), .win4(wout40_16),
                    .aout1(aout41_16), .aout2(aout42_16), .aout3(aout43_16), .aout4(aout44_16),
                    .wout1(wout44_13), .wout2(wout44_14), .wout3(wout44_15), .wout4(wout44_16),
                    .sout11(sout41_13), .sout12(sout41_14), .sout13(sout41_15), .sout14(sout41_16),
                    .sout21(sout42_13), .sout22(sout42_14), .sout23(sout42_15), .sout24(sout42_16),
                    .sout31(sout43_13), .sout32(sout43_14), .sout33(sout43_15), .sout34(sout43_16),
                    .sout41(sout44_13), .sout42(sout44_14), .sout43(sout44_15), .sout44(sout44_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_5 (.clk(clk), .rst(rst),
                    .ain1(aout41_16), .ain2(aout42_16), .ain3(aout43_16), .ain4(aout44_16),
                    .win1(wout40_17), .win2(wout40_18), .win3(wout40_19), .win4(wout40_20),
                    .aout1(aout41_20), .aout2(aout42_20), .aout3(aout43_20), .aout4(aout44_20),
                    .wout1(wout44_17), .wout2(wout44_18), .wout3(wout44_19), .wout4(wout44_20),
                    .sout11(sout41_17), .sout12(sout41_18), .sout13(sout41_19), .sout14(sout41_20),
                    .sout21(sout42_17), .sout22(sout42_18), .sout23(sout42_19), .sout24(sout42_20),
                    .sout31(sout43_17), .sout32(sout43_18), .sout33(sout43_19), .sout34(sout43_20),
                    .sout41(sout44_17), .sout42(sout44_18), .sout43(sout44_19), .sout44(sout44_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_11_6 (.clk(clk), .rst(rst),
                    .ain1(aout41_20), .ain2(aout42_20), .ain3(aout43_20), .ain4(aout44_20),
                    .win1(wout40_21), .win2(wout40_22), .win3(wout40_23), .win4(wout40_24),
                    .aout1(aout41_24), .aout2(aout42_24), .aout3(aout43_24), .aout4(aout44_24),
                    .wout1(wout44_21), .wout2(wout44_22), .wout3(wout44_23), .wout4(wout44_24),
                    .sout11(sout41_21), .sout12(sout41_22), .sout13(sout41_23), .sout14(sout41_24),
                    .sout21(sout42_21), .sout22(sout42_22), .sout23(sout42_23), .sout24(sout42_24),
                    .sout31(sout43_21), .sout32(sout43_22), .sout33(sout43_23), .sout34(sout43_24),
                    .sout41(sout44_21), .sout42(sout44_22), .sout43(sout44_23), .sout44(sout44_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_7 (.clk(clk), .rst(rst),
                    .ain1(aout41_24), .ain2(aout42_24), .ain3(aout43_24), .ain4(aout44_24),
                    .win1(wout40_25), .win2(wout40_26), .win3(wout40_27), .win4(wout40_28),
                    .aout1(aout41_28), .aout2(aout42_28), .aout3(aout43_28), .aout4(aout44_28),
                    .wout1(wout44_25), .wout2(wout44_26), .wout3(wout44_27), .wout4(wout44_28),
                    .sout11(sout41_25), .sout12(sout41_26), .sout13(sout41_27), .sout14(sout41_28),
                    .sout21(sout42_25), .sout22(sout42_26), .sout23(sout42_27), .sout24(sout42_28),
                    .sout31(sout43_25), .sout32(sout43_26), .sout33(sout43_27), .sout34(sout43_28),
                    .sout41(sout44_25), .sout42(sout44_26), .sout43(sout44_27), .sout44(sout44_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_11_8 (.clk(clk), .rst(rst),
                    .ain1(aout41_28), .ain2(aout42_28), .ain3(aout43_28), .ain4(aout44_28),
                    .win1(wout40_29), .win2(wout40_30), .win3(wout40_31), .win4(wout40_32),
                    .aout1(aout41_32), .aout2(aout42_32), .aout3(aout43_32), .aout4(aout44_32),
                    .wout1(wout44_29), .wout2(wout44_30), .wout3(wout44_31), .wout4(wout44_32),
                    .sout11(sout41_29), .sout12(sout41_30), .sout13(sout41_31), .sout14(sout41_32),
                    .sout21(sout42_29), .sout22(sout42_30), .sout23(sout42_31), .sout24(sout42_32),
                    .sout31(sout43_29), .sout32(sout43_30), .sout33(sout43_31), .sout34(sout43_32),
                    .sout41(sout44_29), .sout42(sout44_30), .sout43(sout44_31), .sout44(sout44_32)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_9 (.clk(clk), .rst(rst),
                    .ain1(aout41_32), .ain2(aout42_32), .ain3(aout43_32), .ain4(aout44_32),
                    .win1(wout40_33), .win2(wout40_34), .win3(wout40_35), .win4(wout40_36),
                    .aout1(aout41_36), .aout2(aout42_36), .aout3(aout43_36), .aout4(aout44_36),
                    .wout1(wout44_33), .wout2(wout44_34), .wout3(wout44_35), .wout4(wout44_36),
                    .sout11(sout41_33), .sout12(sout41_34), .sout13(sout41_35), .sout14(sout41_36),
                    .sout21(sout42_33), .sout22(sout42_34), .sout23(sout42_35), .sout24(sout42_36),
                    .sout31(sout43_33), .sout32(sout43_34), .sout33(sout43_35), .sout34(sout43_36),
                    .sout41(sout44_33), .sout42(sout44_34), .sout43(sout44_35), .sout44(sout44_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_10 (.clk(clk), .rst(rst),
                    .ain1(aout41_36), .ain2(aout42_36), .ain3(aout43_36), .ain4(aout44_36),
                    .win1(wout40_37), .win2(wout40_38), .win3(wout40_39), .win4(wout40_40),
                    .aout1(aout41_40), .aout2(aout42_40), .aout3(aout43_40), .aout4(aout44_40),
                    .wout1(wout44_37), .wout2(wout44_38), .wout3(wout44_39), .wout4(wout44_40),
                    .sout11(sout41_37), .sout12(sout41_38), .sout13(sout41_39), .sout14(sout41_40),
                    .sout21(sout42_37), .sout22(sout42_38), .sout23(sout42_39), .sout24(sout42_40),
                    .sout31(sout43_37), .sout32(sout43_38), .sout33(sout43_39), .sout34(sout43_40),
                    .sout41(sout44_37), .sout42(sout44_38), .sout43(sout44_39), .sout44(sout44_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_11 (.clk(clk), .rst(rst),
                    .ain1(aout41_40), .ain2(aout42_40), .ain3(aout43_40), .ain4(aout44_40),
                    .win1(wout40_41), .win2(wout40_42), .win3(wout40_43), .win4(wout40_44),
                    .aout1(aout41_44), .aout2(aout42_44), .aout3(aout43_44), .aout4(aout44_44),
                    .wout1(wout44_41), .wout2(wout44_42), .wout3(wout44_43), .wout4(wout44_44),
                    .sout11(sout41_41), .sout12(sout41_42), .sout13(sout41_43), .sout14(sout41_44),
                    .sout21(sout42_41), .sout22(sout42_42), .sout23(sout42_43), .sout24(sout42_44),
                    .sout31(sout43_41), .sout32(sout43_42), .sout33(sout43_43), .sout34(sout43_44),
                    .sout41(sout44_41), .sout42(sout44_42), .sout43(sout44_43), .sout44(sout44_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_11_12 (.clk(clk), .rst(rst),
                    .ain1(aout41_44), .ain2(aout42_44), .ain3(aout43_44), .ain4(aout44_44),
                    .win1(wout40_45), .win2(wout40_46), .win3(wout40_47), .win4(wout40_48),
                    .aout1(aout41_48), .aout2(aout42_48), .aout3(aout43_48), .aout4(aout44_48),
                    .wout1(wout44_45), .wout2(wout44_46), .wout3(wout44_47), .wout4(wout44_48),
                    .sout11(sout41_45), .sout12(sout41_46), .sout13(sout41_47), .sout14(sout41_48),
                    .sout21(sout42_45), .sout22(sout42_46), .sout23(sout42_47), .sout24(sout42_48),
                    .sout31(sout43_45), .sout32(sout43_46), .sout33(sout43_47), .sout34(sout43_48),
                    .sout41(sout44_45), .sout42(sout44_46), .sout43(sout44_47), .sout44(sout44_48)
                    ); //4x4 MAC array
     
                 
    //row12
    mac_array_4x4 mac_array_4x4_12_1 (.clk(clk), .rst(rst),
                    .ain1(ain45), .ain2(ain46), .ain3(ain47), .ain4(ain48),
                    .win1(wout44_1), .win2(wout44_2), .win3(wout44_3), .win4(wout44_4),
                    .aout1(aout45_4), .aout2(aout46_4), .aout3(aout47_4), .aout4(aout48_4),
                    .wout1(wout48_1), .wout2(wout48_2), .wout3(wout48_3), .wout4(wout48_4),
                    .sout11(sout45_1), .sout12(sout45_2), .sout13(sout45_3), .sout14(sout45_4),
                    .sout21(sout46_1), .sout22(sout46_2), .sout23(sout46_3), .sout24(sout46_4),
                    .sout31(sout47_1), .sout32(sout47_2), .sout33(sout47_3), .sout34(sout47_4),
                    .sout41(sout48_1), .sout42(sout48_2), .sout43(sout48_3), .sout44(sout48_4)
                    ); //4x4 MAC array
                    
  
    mac_array_4x4 mac_array_4x4_12_2 (.clk(clk), .rst(rst),
                    .ain1(aout45_4), .ain2(aout46_4), .ain3(aout47_4), .ain4(aout48_4),
                    .win1(wout44_5), .win2(wout44_6), .win3(wout44_7), .win4(wout44_8),
                    .aout1(aout45_8), .aout2(aout46_8), .aout3(aout47_8), .aout4(aout48_8),
                    .wout1(wout48_5), .wout2(wout48_6), .wout3(wout48_7), .wout4(wout48_8),
                    .sout11(sout45_5), .sout12(sout45_6), .sout13(sout45_7), .sout14(sout45_8),
                    .sout21(sout46_5), .sout22(sout46_6), .sout23(sout46_7), .sout24(sout46_8),
                    .sout31(sout47_5), .sout32(sout47_6), .sout33(sout47_7), .sout34(sout47_8),
                    .sout41(sout48_5), .sout42(sout48_6), .sout43(sout48_7), .sout44(sout48_8)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_12_3 (.clk(clk), .rst(rst),
                    .ain1(aout45_8), .ain2(aout46_8), .ain3(aout47_8), .ain4(aout48_8),
                    .win1(wout44_9), .win2(wout44_10), .win3(wout44_11), .win4(wout44_12),
                    .aout1(aout45_12), .aout2(aout46_12), .aout3(aout47_12), .aout4(aout48_12),
                    .wout1(wout48_9), .wout2(wout48_10), .wout3(wout48_11), .wout4(wout48_12),
                    .sout11(sout45_9), .sout12(sout45_10), .sout13(sout45_11), .sout14(sout45_12),
                    .sout21(sout46_9), .sout22(sout46_10), .sout23(sout46_11), .sout24(sout46_12),
                    .sout31(sout47_9), .sout32(sout47_10), .sout33(sout47_11), .sout34(sout47_12),
                    .sout41(sout48_9), .sout42(sout48_10), .sout43(sout48_11), .sout44(sout48_12)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_4 (.clk(clk), .rst(rst),
                    .ain1(aout45_12), .ain2(aout46_12), .ain3(aout47_12), .ain4(aout48_12),
                    .win1(wout44_13), .win2(wout44_14), .win3(wout44_15), .win4(wout44_16),
                    .aout1(aout45_16), .aout2(aout46_16), .aout3(aout47_16), .aout4(aout48_16),
                    .wout1(wout48_13), .wout2(wout48_14), .wout3(wout48_15), .wout4(wout48_16),
                    .sout11(sout45_13), .sout12(sout45_14), .sout13(sout45_15), .sout14(sout45_16),
                    .sout21(sout46_13), .sout22(sout46_14), .sout23(sout46_15), .sout24(sout46_16),
                    .sout31(sout47_13), .sout32(sout47_14), .sout33(sout47_15), .sout34(sout47_16),
                    .sout41(sout48_13), .sout42(sout48_14), .sout43(sout48_15), .sout44(sout48_16)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_5 (.clk(clk), .rst(rst),
                    .ain1(aout45_16), .ain2(aout46_16), .ain3(aout47_16), .ain4(aout48_16),
                    .win1(wout44_17), .win2(wout44_18), .win3(wout44_19), .win4(wout44_20),
                    .aout1(aout45_20), .aout2(aout46_20), .aout3(aout47_20), .aout4(aout48_20),
                    .wout1(wout48_17), .wout2(wout48_18), .wout3(wout48_19), .wout4(wout48_20),
                    .sout11(sout45_17), .sout12(sout45_18), .sout13(sout45_19), .sout14(sout45_20),
                    .sout21(sout46_17), .sout22(sout46_18), .sout23(sout46_19), .sout24(sout46_20),
                    .sout31(sout47_17), .sout32(sout47_18), .sout33(sout47_19), .sout34(sout47_20),
                    .sout41(sout48_17), .sout42(sout48_18), .sout43(sout48_19), .sout44(sout48_20)
                    ); //4x4 MAC array
                   
    mac_array_4x4 mac_array_4x4_12_6 (.clk(clk), .rst(rst),
                    .ain1(aout45_20), .ain2(aout46_20), .ain3(aout47_20), .ain4(aout48_20),
                    .win1(wout44_21), .win2(wout44_22), .win3(wout44_23), .win4(wout44_24),
                    .aout1(aout45_24), .aout2(aout46_24), .aout3(aout47_24), .aout4(aout48_24),
                    .wout1(wout48_21), .wout2(wout48_22), .wout3(wout48_23), .wout4(wout48_24),
                    .sout11(sout45_21), .sout12(sout45_22), .sout13(sout45_23), .sout14(sout45_24),
                    .sout21(sout46_21), .sout22(sout46_22), .sout23(sout46_23), .sout24(sout46_24),
                    .sout31(sout47_21), .sout32(sout47_22), .sout33(sout47_23), .sout34(sout47_24),
                    .sout41(sout48_21), .sout42(sout48_22), .sout43(sout48_23), .sout44(sout48_24)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_7 (.clk(clk), .rst(rst),
                    .ain1(aout45_24), .ain2(aout46_24), .ain3(aout47_24), .ain4(aout48_24),
                    .win1(wout44_25), .win2(wout44_26), .win3(wout44_27), .win4(wout44_28),
                    .aout1(aout45_28), .aout2(aout46_28), .aout3(aout47_28), .aout4(aout48_28),
                    .wout1(wout48_25), .wout2(wout48_26), .wout3(wout48_27), .wout4(wout48_28),
                    .sout11(sout45_25), .sout12(sout45_26), .sout13(sout45_27), .sout14(sout45_28),
                    .sout21(sout46_25), .sout22(sout46_26), .sout23(sout46_27), .sout24(sout46_28),
                    .sout31(sout47_25), .sout32(sout47_26), .sout33(sout47_27), .sout34(sout47_28),
                    .sout41(sout48_25), .sout42(sout48_26), .sout43(sout48_27), .sout44(sout48_28)
                    ); //4x4 MAC array
    
    mac_array_4x4 mac_array_4x4_12_8 (.clk(clk), .rst(rst),
                    .ain1(aout45_28), .ain2(aout46_28), .ain3(aout47_28), .ain4(aout48_28),
                    .win1(wout44_29), .win2(wout44_30), .win3(wout44_31), .win4(wout44_32),
                    .aout1(aout45_32), .aout2(aout46_32), .aout3(aout47_32), .aout4(aout48_32),
                    .wout1(wout48_29), .wout2(wout48_30), .wout3(wout48_31), .wout4(wout48_32),
                    .sout11(sout45_29), .sout12(sout45_30), .sout13(sout45_31), .sout14(sout45_32),
                    .sout21(sout46_29), .sout22(sout46_30), .sout23(sout46_31), .sout24(sout46_32),
                    .sout31(sout47_29), .sout32(sout47_30), .sout33(sout47_31), .sout34(sout47_32),
                    .sout41(sout48_29), .sout42(sout48_30), .sout43(sout48_31), .sout44(sout48_32)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_9 (.clk(clk), .rst(rst),
                    .ain1(aout45_32), .ain2(aout46_32), .ain3(aout47_32), .ain4(aout48_32),
                    .win1(wout44_33), .win2(wout44_34), .win3(wout44_35), .win4(wout44_36),
                    .aout1(aout45_36), .aout2(aout46_36), .aout3(aout47_36), .aout4(aout48_36),
                    .wout1(wout48_33), .wout2(wout48_34), .wout3(wout48_35), .wout4(wout48_36),
                    .sout11(sout45_33), .sout12(sout45_34), .sout13(sout45_35), .sout14(sout45_36),
                    .sout21(sout46_33), .sout22(sout46_34), .sout23(sout46_35), .sout24(sout46_36),
                    .sout31(sout47_33), .sout32(sout47_34), .sout33(sout47_35), .sout34(sout47_36),
                    .sout41(sout48_33), .sout42(sout48_34), .sout43(sout48_35), .sout44(sout48_36)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_10 (.clk(clk), .rst(rst),
                    .ain1(aout45_36), .ain2(aout46_36), .ain3(aout47_36), .ain4(aout48_36),
                    .win1(wout44_37), .win2(wout44_38), .win3(wout44_39), .win4(wout44_40),
                    .aout1(aout45_40), .aout2(aout46_40), .aout3(aout47_40), .aout4(aout48_40),
                    .wout1(wout48_37), .wout2(wout48_38), .wout3(wout48_39), .wout4(wout48_40),
                    .sout11(sout45_37), .sout12(sout45_38), .sout13(sout45_39), .sout14(sout45_40),
                    .sout21(sout46_37), .sout22(sout46_38), .sout23(sout46_39), .sout24(sout46_40),
                    .sout31(sout47_37), .sout32(sout47_38), .sout33(sout47_39), .sout34(sout47_40),
                    .sout41(sout48_37), .sout42(sout48_38), .sout43(sout48_39), .sout44(sout48_40)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_11 (.clk(clk), .rst(rst),
                    .ain1(aout45_40), .ain2(aout46_40), .ain3(aout47_40), .ain4(aout48_40),
                    .win1(wout44_41), .win2(wout44_42), .win3(wout44_43), .win4(wout44_44),
                    .aout1(aout45_44), .aout2(aout46_44), .aout3(aout47_44), .aout4(aout48_44),
                    .wout1(wout48_41), .wout2(wout48_42), .wout3(wout48_43), .wout4(wout48_44),
                    .sout11(sout45_41), .sout12(sout45_42), .sout13(sout45_43), .sout14(sout45_44),
                    .sout21(sout46_41), .sout22(sout46_42), .sout23(sout46_43), .sout24(sout46_44),
                    .sout31(sout47_41), .sout32(sout47_42), .sout33(sout47_43), .sout34(sout47_44),
                    .sout41(sout48_41), .sout42(sout48_42), .sout43(sout48_43), .sout44(sout48_44)
                    ); //4x4 MAC array
                    
    mac_array_4x4 mac_array_4x4_12_12 (.clk(clk), .rst(rst),
                    .ain1(aout45_44), .ain2(aout46_44), .ain3(aout47_44), .ain4(aout48_44),
                    .win1(wout44_45), .win2(wout44_46), .win3(wout44_47), .win4(wout44_48),
                    .aout1(aout45_48), .aout2(aout46_48), .aout3(aout47_48), .aout4(aout48_48),
                    .wout1(wout48_45), .wout2(wout48_46), .wout3(wout48_47), .wout4(wout48_48),
                    .sout11(sout45_45), .sout12(sout45_46), .sout13(sout45_47), .sout14(sout45_48),
                    .sout21(sout46_45), .sout22(sout46_46), .sout23(sout46_47), .sout24(sout46_48),
                    .sout31(sout47_45), .sout32(sout47_46), .sout33(sout47_47), .sout34(sout47_48),
                    .sout41(sout48_45), .sout42(sout48_46), .sout43(sout48_47), .sout44(sout48_48)
                    ); //4x4 MAC array
                    
                
                    
    
endmodule
