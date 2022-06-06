`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2022 05:54:34 PM
// Design Name: 
// Module Name: mac_array_64x64_tb
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


module mac_array_64x64_tb(
    );
    
    //inputs
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
              ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
              ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
              ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32, 
              ain33, ain34, ain35, ain36, ain37, ain38, ain39, ain40, 
              ain41, ain42, ain43, ain44, ain45, ain46, ain47, ain48,
              ain49, ain50, ain51, ain52, ain53, ain54, ain55, ain56,
              ain57, ain58, ain59, ain60, ain61, ain62, ain63, ain64;
              
    reg [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
              win9, win10, win11, win12, win13, win14, win15, win16, 
              win17, win18, win19, win20, win21, win22, win23, win24, 
              win25, win26, win27, win28, win29, win30, win31, win32, 
              win33, win34, win35, win36, win37, win38, win39, win40, 
              win41, win42, win43, win44, win45, win46, win47, win48,
              win49, win50, win51, win52, win53, win54, win55, win56,
              win57, win58, win59, win60, win61, win62, win63, win64; 
              
    
    //outputs       
    wire [21:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
                sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
                sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
                sout1_33, sout1_34, sout1_35, sout1_36, sout1_37, sout1_38, sout1_39, sout1_40,
                sout1_41, sout1_42, sout1_43, sout1_44, sout1_45, sout1_46, sout1_47, sout1_48,
                sout1_49, sout1_50, sout1_51, sout1_52, sout1_53, sout1_54, sout1_55, sout1_56, 
                sout1_57, sout1_58, sout1_59, sout1_60, sout1_61, sout1_62, sout1_63, sout1_64;
    
    wire [21:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
                sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
                sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
                sout2_33, sout2_34, sout2_35, sout2_36, sout2_37, sout2_38, sout2_39, sout2_40,
                sout2_41, sout2_42, sout2_43, sout2_44, sout2_45, sout2_46, sout2_47, sout2_48,
                sout2_49, sout2_50, sout2_51, sout2_52, sout2_53, sout2_54, sout2_55, sout2_56, 
                sout2_57, sout2_58, sout2_59, sout2_60, sout2_61, sout2_62, sout2_63, sout2_64;
    
    wire [21:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
                sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
                sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
                sout3_33, sout3_34, sout3_35, sout3_36, sout3_37, sout3_38, sout3_39, sout3_40,
                sout3_41, sout3_42, sout3_43, sout3_44, sout3_45, sout3_46, sout3_47, sout3_48,
                sout3_49, sout3_50, sout3_51, sout3_52, sout3_53, sout3_54, sout3_55, sout3_56, 
                sout3_57, sout3_58, sout3_59, sout3_60, sout3_61, sout3_62, sout3_63, sout3_64;
    
    wire [21:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
                sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
                sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
                sout4_33, sout4_34, sout4_35, sout4_36, sout4_37, sout4_38, sout4_39, sout4_40,
                sout4_41, sout4_42, sout4_43, sout4_44, sout4_45, sout4_46, sout4_47, sout4_48,
                sout4_49, sout4_50, sout4_51, sout4_52, sout4_53, sout4_54, sout4_55, sout4_56, 
                sout4_57, sout4_58, sout4_59, sout4_60, sout4_61, sout4_62, sout4_63, sout4_64;
    
    wire [21:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
                sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
                sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
                sout5_33, sout5_34, sout5_35, sout5_36, sout5_37, sout5_38, sout5_39, sout5_40,
                sout5_41, sout5_42, sout5_43, sout5_44, sout5_45, sout5_46, sout5_47, sout5_48,
                sout5_49, sout5_50, sout5_51, sout5_52, sout5_53, sout5_54, sout5_55, sout5_56, 
                sout5_57, sout5_58, sout5_59, sout5_60, sout5_61, sout5_62, sout5_63, sout5_64;
    
    wire [21:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
                sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
                sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
                sout6_33, sout6_34, sout6_35, sout6_36, sout6_37, sout6_38, sout6_39, sout6_40,
                sout6_41, sout6_42, sout6_43, sout6_44, sout6_45, sout6_46, sout6_47, sout6_48,
                sout6_49, sout6_50, sout6_51, sout6_52, sout6_53, sout6_54, sout6_55, sout6_56, 
                sout6_57, sout6_58, sout6_59, sout6_60, sout6_61, sout6_62, sout6_63, sout6_64;
    
    wire [21:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
                sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
                sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
                sout7_33, sout7_34, sout7_35, sout7_36, sout7_37, sout7_38, sout7_39, sout7_40,
                sout7_41, sout7_42, sout7_43, sout7_44, sout7_45, sout7_46, sout7_47, sout7_48,
                sout7_49, sout7_50, sout7_51, sout7_52, sout7_53, sout7_54, sout7_55, sout7_56, 
                sout7_57, sout7_58, sout7_59, sout7_60, sout7_61, sout7_62, sout7_63, sout7_64; 
    
    wire [21:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
                sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
                sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
                sout8_33, sout8_34, sout8_35, sout8_36, sout8_37, sout8_38, sout8_39, sout8_40,
                sout8_41, sout8_42, sout8_43, sout8_44, sout8_45, sout8_46, sout8_47, sout8_48,
                sout8_49, sout8_50, sout8_51, sout8_52, sout8_53, sout8_54, sout8_55, sout8_56, 
                sout8_57, sout8_58, sout8_59, sout8_60, sout8_61, sout8_62, sout8_63, sout8_64;
    
    wire [21:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
                sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
                sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
                sout9_33, sout9_34, sout9_35, sout9_36, sout9_37, sout9_38, sout9_39, sout9_40,
                sout9_41, sout9_42, sout9_43, sout9_44, sout9_45, sout9_46, sout9_47, sout9_48,
                sout9_49, sout9_50, sout9_51, sout9_52, sout9_53, sout9_54, sout9_55, sout9_56, 
                sout9_57, sout9_58, sout9_59, sout9_60, sout9_61, sout9_62, sout9_63, sout9_64;
    
    wire [21:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
                sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
                sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
                sout10_33, sout10_34, sout10_35, sout10_36, sout10_37, sout10_38, sout10_39, sout10_40,
                sout10_41, sout10_42, sout10_43, sout10_44, sout10_45, sout10_46, sout10_47, sout10_48,
                sout10_49, sout10_50, sout10_51, sout10_52, sout10_53, sout10_54, sout10_55, sout10_56, 
                sout10_57, sout10_58, sout10_59, sout10_60, sout10_61, sout10_62, sout10_63, sout10_64;
    
    wire [21:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
                sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
                sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
                sout11_33, sout11_34, sout11_35, sout11_36, sout11_37, sout11_38, sout11_39, sout11_40,
                sout11_41, sout11_42, sout11_43, sout11_44, sout11_45, sout11_46, sout11_47, sout11_48,
                sout11_49, sout11_50, sout11_51, sout11_52, sout11_53, sout11_54, sout11_55, sout11_56, 
                sout11_57, sout11_58, sout11_59, sout11_60, sout11_61, sout11_62, sout11_63, sout11_64;
    
    wire [21:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
                sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
                sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
                sout12_33, sout12_34, sout12_35, sout12_36, sout12_37, sout12_38, sout12_39, sout12_40,
                sout12_41, sout12_42, sout12_43, sout12_44, sout12_45, sout12_46, sout12_47, sout12_48,
                sout12_49, sout12_50, sout12_51, sout12_52, sout12_53, sout12_54, sout12_55, sout12_56, 
                sout12_57, sout12_58, sout12_59, sout12_60, sout12_61, sout12_62, sout12_63, sout12_64;
    
    wire [21:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
                sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
                sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
                sout13_33, sout13_34, sout13_35, sout13_36, sout13_37, sout13_38, sout13_39, sout13_40,
                sout13_41, sout13_42, sout13_43, sout13_44, sout13_45, sout13_46, sout13_47, sout13_48,
                sout13_49, sout13_50, sout13_51, sout13_52, sout13_53, sout13_54, sout13_55, sout13_56, 
                sout13_57, sout13_58, sout13_59, sout13_60, sout13_61, sout13_62, sout13_63, sout13_64;
    
    wire [21:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
                sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
                sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
                sout14_33, sout14_34, sout14_35, sout14_36, sout14_37, sout14_38, sout14_39, sout14_40,
                sout14_41, sout14_42, sout14_43, sout14_44, sout14_45, sout14_46, sout14_47, sout14_48,
                sout14_49, sout14_50, sout14_51, sout14_52, sout14_53, sout14_54, sout14_55, sout14_56, 
                sout14_57, sout14_58, sout14_59, sout14_60, sout14_61, sout14_62, sout14_63, sout14_64;
    
    wire [21:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
                sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
                sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
                sout15_33, sout15_34, sout15_35, sout15_36, sout15_37, sout15_38, sout15_39, sout15_40,
                sout15_41, sout15_42, sout15_43, sout15_44, sout15_45, sout15_46, sout15_47, sout15_48,
                sout15_49, sout15_50, sout15_51, sout15_52, sout15_53, sout15_54, sout15_55, sout15_56, 
                sout15_57, sout15_58, sout15_59, sout15_60, sout15_61, sout15_62, sout15_63, sout15_64;
    
    wire [21:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
                sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
                sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
                sout16_33, sout16_34, sout16_35, sout16_36, sout16_37, sout16_38, sout16_39, sout16_40,
                sout16_41, sout16_42, sout16_43, sout16_44, sout16_45, sout16_46, sout16_47, sout16_48,
                sout16_49, sout16_50, sout16_51, sout16_52, sout16_53, sout16_54, sout16_55, sout16_56, 
                sout16_57, sout16_58, sout16_59, sout16_60, sout16_61, sout16_62, sout16_63, sout16_64;
    
    wire [21:0] sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
                sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
                sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
                sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
                sout17_33, sout17_34, sout17_35, sout17_36, sout17_37, sout17_38, sout17_39, sout17_40,
                sout17_41, sout17_42, sout17_43, sout17_44, sout17_45, sout17_46, sout17_47, sout17_48,
                sout17_49, sout17_50, sout17_51, sout17_52, sout17_53, sout17_54, sout17_55, sout17_56, 
                sout17_57, sout17_58, sout17_59, sout17_60, sout17_61, sout17_62, sout17_63, sout17_64;
    
    wire [21:0] sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
                sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
                sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
                sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
                sout18_33, sout18_34, sout18_35, sout18_36, sout18_37, sout18_38, sout18_39, sout18_40,
                sout18_41, sout18_42, sout18_43, sout18_44, sout18_45, sout18_46, sout18_47, sout18_48,
                sout18_49, sout18_50, sout18_51, sout18_52, sout18_53, sout18_54, sout18_55, sout18_56, 
                sout18_57, sout18_58, sout18_59, sout18_60, sout18_61, sout18_62, sout18_63, sout18_64;
    
    wire [21:0] sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
                sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
                sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
                sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
                sout19_33, sout19_34, sout19_35, sout19_36, sout19_37, sout19_38, sout19_39, sout19_40,
                sout19_41, sout19_42, sout19_43, sout19_44, sout19_45, sout19_46, sout19_47, sout19_48,
                sout19_49, sout19_50, sout19_51, sout19_52, sout19_53, sout19_54, sout19_55, sout19_56, 
                sout19_57, sout19_58, sout19_59, sout19_60, sout19_61, sout19_62, sout19_63, sout19_64;
    
    wire [21:0] sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
                sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
                sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
                sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
                sout20_33, sout20_34, sout20_35, sout20_36, sout20_37, sout20_38, sout20_39, sout20_40,
                sout20_41, sout20_42, sout20_43, sout20_44, sout20_45, sout20_46, sout20_47, sout20_48,
                sout20_49, sout20_50, sout20_51, sout20_52, sout20_53, sout20_54, sout20_55, sout20_56, 
                sout20_57, sout20_58, sout20_59, sout20_60, sout20_61, sout20_62, sout20_63, sout20_64;
    
    wire [21:0] sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
                sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
                sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
                sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
                sout21_33, sout21_34, sout21_35, sout21_36, sout21_37, sout21_38, sout21_39, sout21_40,
                sout21_41, sout21_42, sout21_43, sout21_44, sout21_45, sout21_46, sout21_47, sout21_48,
                sout21_49, sout21_50, sout21_51, sout21_52, sout21_53, sout21_54, sout21_55, sout21_56, 
                sout21_57, sout21_58, sout21_59, sout21_60, sout21_61, sout21_62, sout21_63, sout21_64;
    
    wire [21:0] sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
                sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
                sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
                sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
                sout22_33, sout22_34, sout22_35, sout22_36, sout22_37, sout22_38, sout22_39, sout22_40,
                sout22_41, sout22_42, sout22_43, sout22_44, sout22_45, sout22_46, sout22_47, sout22_48,
                sout22_49, sout22_50, sout22_51, sout22_52, sout22_53, sout22_54, sout22_55, sout22_56, 
                sout22_57, sout22_58, sout22_59, sout22_60, sout22_61, sout22_62, sout22_63, sout22_64;
    
    wire [21:0] sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
                sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
                sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
                sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
                sout23_33, sout23_34, sout23_35, sout23_36, sout23_37, sout23_38, sout23_39, sout23_40,
                sout23_41, sout23_42, sout23_43, sout23_44, sout23_45, sout23_46, sout23_47, sout23_48,
                sout23_49, sout23_50, sout23_51, sout23_52, sout23_53, sout23_54, sout23_55, sout23_56, 
                sout23_57, sout23_58, sout23_59, sout23_60, sout23_61, sout23_62, sout23_63, sout23_64;
    
    wire [21:0] sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
                sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
                sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
                sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
                sout24_33, sout24_34, sout24_35, sout24_36, sout24_37, sout24_38, sout24_39, sout24_40,
                sout24_41, sout24_42, sout24_43, sout24_44, sout24_45, sout24_46, sout24_47, sout24_48,
                sout24_49, sout24_50, sout24_51, sout24_52, sout24_53, sout24_54, sout24_55, sout24_56, 
                sout24_57, sout24_58, sout24_59, sout24_60, sout24_61, sout24_62, sout24_63, sout24_64;
    
    wire [21:0] sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
                sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
                sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
                sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
                sout25_33, sout25_34, sout25_35, sout25_36, sout25_37, sout25_38, sout25_39, sout25_40,
                sout25_41, sout25_42, sout25_43, sout25_44, sout25_45, sout25_46, sout25_47, sout25_48,
                sout25_49, sout25_50, sout25_51, sout25_52, sout25_53, sout25_54, sout25_55, sout25_56, 
                sout25_57, sout25_58, sout25_59, sout25_60, sout25_61, sout25_62, sout25_63, sout25_64;
    
    wire [21:0] sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
                sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
                sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
                sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
                sout26_33, sout26_34, sout26_35, sout26_36, sout26_37, sout26_38, sout26_39, sout26_40,
                sout26_41, sout26_42, sout26_43, sout26_44, sout26_45, sout26_46, sout26_47, sout26_48,
                sout26_49, sout26_50, sout26_51, sout26_52, sout26_53, sout26_54, sout26_55, sout26_56, 
                sout26_57, sout26_58, sout26_59, sout26_60, sout26_61, sout26_62, sout26_63, sout26_64; 
    
    wire [21:0] sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
                sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
                sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
                sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
                sout27_33, sout27_34, sout27_35, sout27_36, sout27_37, sout27_38, sout27_39, sout27_40,
                sout27_41, sout27_42, sout27_43, sout27_44, sout27_45, sout27_46, sout27_47, sout27_48,
                sout27_49, sout27_50, sout27_51, sout27_52, sout27_53, sout27_54, sout27_55, sout27_56, 
                sout27_57, sout27_58, sout27_59, sout27_60, sout27_61, sout27_62, sout27_63, sout27_64;
    
    wire [21:0] sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
                sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
                sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
                sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
                sout28_33, sout28_34, sout28_35, sout28_36, sout28_37, sout28_38, sout28_39, sout28_40,
                sout28_41, sout28_42, sout28_43, sout28_44, sout28_45, sout28_46, sout28_47, sout28_48,
                sout28_49, sout28_50, sout28_51, sout28_52, sout28_53, sout28_54, sout28_55, sout28_56, 
                sout28_57, sout28_58, sout28_59, sout28_60, sout28_61, sout28_62, sout28_63, sout28_64;
    
    wire [21:0] sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
                sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
                sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
                sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
                sout29_33, sout29_34, sout29_35, sout29_36, sout29_37, sout29_38, sout29_39, sout29_40,
                sout29_41, sout29_42, sout29_43, sout29_44, sout29_45, sout29_46, sout29_47, sout29_48,
                sout29_49, sout29_50, sout29_51, sout29_52, sout29_53, sout29_54, sout29_55, sout29_56, 
                sout29_57, sout29_58, sout29_59, sout29_60, sout29_61, sout29_62, sout29_63, sout29_64;
    
    wire [21:0] sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
                sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
                sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
                sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
                sout30_33, sout30_34, sout30_35, sout30_36, sout30_37, sout30_38, sout30_39, sout30_40,
                sout30_41, sout30_42, sout30_43, sout30_44, sout30_45, sout30_46, sout30_47, sout30_48,
                sout30_49, sout30_50, sout30_51, sout30_52, sout30_53, sout30_54, sout30_55, sout30_56, 
                sout30_57, sout30_58, sout30_59, sout30_60, sout30_61, sout30_62, sout30_63, sout30_64;
    
    wire [21:0] sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
                sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
                sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
                sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
                sout31_33, sout31_34, sout31_35, sout31_36, sout31_37, sout31_38, sout31_39, sout31_40,
                sout31_41, sout31_42, sout31_43, sout31_44, sout31_45, sout31_46, sout31_47, sout31_48,
                sout31_49, sout31_50, sout31_51, sout31_52, sout31_53, sout31_54, sout31_55, sout31_56, 
                sout31_57, sout31_58, sout31_59, sout31_60, sout31_61, sout31_62, sout31_63, sout31_64;
    
    wire [21:0] sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
                sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
                sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
                sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32,
                sout32_33, sout32_34, sout32_35, sout32_36, sout32_37, sout32_38, sout32_39, sout32_40,
                sout32_41, sout32_42, sout32_43, sout32_44, sout32_45, sout32_46, sout32_47, sout32_48,
                sout32_49, sout32_50, sout32_51, sout32_52, sout32_53, sout32_54, sout32_55, sout32_56, 
                sout32_57, sout32_58, sout32_59, sout32_60, sout32_61, sout32_62, sout32_63, sout32_64;
    
    wire [21:0] sout33_1, sout33_2, sout33_3, sout33_4, sout33_5, sout33_6, sout33_7, sout33_8,
                sout33_9, sout33_10, sout33_11, sout33_12, sout33_13, sout33_14, sout33_15, sout33_16,
                sout33_17, sout33_18, sout33_19, sout33_20, sout33_21, sout33_22, sout33_23, sout33_24, 
                sout33_25, sout33_26, sout33_27, sout33_28, sout33_29, sout33_30, sout33_31, sout33_32,
                sout33_33, sout33_34, sout33_35, sout33_36, sout33_37, sout33_38, sout33_39, sout33_40,
                sout33_41, sout33_42, sout33_43, sout33_44, sout33_45, sout33_46, sout33_47, sout33_48,
                sout33_49, sout33_50, sout33_51, sout33_52, sout33_53, sout33_54, sout33_55, sout33_56, 
                sout33_57, sout33_58, sout33_59, sout33_60, sout33_61, sout33_62, sout33_63, sout33_64;
                    
    wire [21:0] sout34_1, sout34_2, sout34_3, sout34_4, sout34_5, sout34_6, sout34_7, sout34_8,
                sout34_9, sout34_10, sout34_11, sout34_12, sout34_13, sout34_14, sout34_15, sout34_16,
                sout34_17, sout34_18, sout34_19, sout34_20, sout34_21, sout34_22, sout34_23, sout34_24, 
                sout34_25, sout34_26, sout34_27, sout34_28, sout34_29, sout34_30, sout34_31, sout34_32,
                sout34_33, sout34_34, sout34_35, sout34_36, sout34_37, sout34_38, sout34_39, sout34_40,
                sout34_41, sout34_42, sout34_43, sout34_44, sout34_45, sout34_46, sout34_47, sout34_48,
                sout34_49, sout34_50, sout34_51, sout34_52, sout34_53, sout34_54, sout34_55, sout34_56, 
                sout34_57, sout34_58, sout34_59, sout34_60, sout34_61, sout34_62, sout34_63, sout34_64;
                  
    wire [21:0] sout35_1, sout35_2, sout35_3, sout35_4, sout35_5, sout35_6, sout35_7, sout35_8,
                sout35_9, sout35_10, sout35_11, sout35_12, sout35_13, sout35_14, sout35_15, sout35_16,
                sout35_17, sout35_18, sout35_19, sout35_20, sout35_21, sout35_22, sout35_23, sout35_24, 
                sout35_25, sout35_26, sout35_27, sout35_28, sout35_29, sout35_30, sout35_31, sout35_32,
                sout35_33, sout35_34, sout35_35, sout35_36, sout35_37, sout35_38, sout35_39, sout35_40,
                sout35_41, sout35_42, sout35_43, sout35_44, sout35_45, sout35_46, sout35_47, sout35_48,
                sout35_49, sout35_50, sout35_51, sout35_52, sout35_53, sout35_54, sout35_55, sout35_56, 
                sout35_57, sout35_58, sout35_59, sout35_60, sout35_61, sout35_62, sout35_63, sout35_64;
                  
    wire [21:0] sout36_1, sout36_2, sout36_3, sout36_4, sout36_5, sout36_6, sout36_7, sout36_8,
                sout36_9, sout36_10, sout36_11, sout36_12, sout36_13, sout36_14, sout36_15, sout36_16,
                sout36_17, sout36_18, sout36_19, sout36_20, sout36_21, sout36_22, sout36_23, sout36_24, 
                sout36_25, sout36_26, sout36_27, sout36_28, sout36_29, sout36_30, sout36_31, sout36_32,
                sout36_33, sout36_34, sout36_35, sout36_36, sout36_37, sout36_38, sout36_39, sout36_40,
                sout36_41, sout36_42, sout36_43, sout36_44, sout36_45, sout36_46, sout36_47, sout36_48,
                sout36_49, sout36_50, sout36_51, sout36_52, sout36_53, sout36_54, sout36_55, sout36_56, 
                sout36_57, sout36_58, sout36_59, sout36_60, sout36_61, sout36_62, sout36_63, sout36_64;
                  
    wire [21:0] sout37_1, sout37_2, sout37_3, sout37_4, sout37_5, sout37_6, sout37_7, sout37_8,
                sout37_9, sout37_10, sout37_11, sout37_12, sout37_13, sout37_14, sout37_15, sout37_16,
                sout37_17, sout37_18, sout37_19, sout37_20, sout37_21, sout37_22, sout37_23, sout37_24, 
                sout37_25, sout37_26, sout37_27, sout37_28, sout37_29, sout37_30, sout37_31, sout37_32,
                sout37_33, sout37_34, sout37_35, sout37_36, sout37_37, sout37_38, sout37_39, sout37_40,
                sout37_41, sout37_42, sout37_43, sout37_44, sout37_45, sout37_46, sout37_47, sout37_48,
                sout37_49, sout37_50, sout37_51, sout37_52, sout37_53, sout37_54, sout37_55, sout37_56, 
                sout37_57, sout37_58, sout37_59, sout37_60, sout37_61, sout37_62, sout37_63, sout37_64;
                  
    wire [21:0] sout38_1, sout38_2, sout38_3, sout38_4, sout38_5, sout38_6, sout38_7, sout38_8,
                sout38_9, sout38_10, sout38_11, sout38_12, sout38_13, sout38_14, sout38_15, sout38_16,
                sout38_17, sout38_18, sout38_19, sout38_20, sout38_21, sout38_22, sout38_23, sout38_24, 
                sout38_25, sout38_26, sout38_27, sout38_28, sout38_29, sout38_30, sout38_31, sout38_32,
                sout38_33, sout38_34, sout38_35, sout38_36, sout38_37, sout38_38, sout38_39, sout38_40,
                sout38_41, sout38_42, sout38_43, sout38_44, sout38_45, sout38_46, sout38_47, sout38_48,
                sout38_49, sout38_50, sout38_51, sout38_52, sout38_53, sout38_54, sout38_55, sout38_56, 
                sout38_57, sout38_58, sout38_59, sout38_60, sout38_61, sout38_62, sout38_63, sout38_64;
                  
    wire [21:0] sout39_1, sout39_2, sout39_3, sout39_4, sout39_5, sout39_6, sout39_7, sout39_8,
                sout39_9, sout39_10, sout39_11, sout39_12, sout39_13, sout39_14, sout39_15, sout39_16,
                sout39_17, sout39_18, sout39_19, sout39_20, sout39_21, sout39_22, sout39_23, sout39_24, 
                sout39_25, sout39_26, sout39_27, sout39_28, sout39_29, sout39_30, sout39_31, sout39_32,
                sout39_33, sout39_34, sout39_35, sout39_36, sout39_37, sout39_38, sout39_39, sout39_40,
                sout39_41, sout39_42, sout39_43, sout39_44, sout39_45, sout39_46, sout39_47, sout39_48,
                sout39_49, sout39_50, sout39_51, sout39_52, sout39_53, sout39_54, sout39_55, sout39_56, 
                sout39_57, sout39_58, sout39_59, sout39_60, sout39_61, sout39_62, sout39_63, sout39_64;
                  
    wire [21:0] sout40_1, sout40_2, sout40_3, sout40_4, sout40_5, sout40_6, sout40_7, sout40_8,
                sout40_9, sout40_10, sout40_11, sout40_12, sout40_13, sout40_14, sout40_15, sout40_16,
                sout40_17, sout40_18, sout40_19, sout40_20, sout40_21, sout40_22, sout40_23, sout40_24, 
                sout40_25, sout40_26, sout40_27, sout40_28, sout40_29, sout40_30, sout40_31, sout40_32,
                sout40_33, sout40_34, sout40_35, sout40_36, sout40_37, sout40_38, sout40_39, sout40_40,
                sout40_41, sout40_42, sout40_43, sout40_44, sout40_45, sout40_46, sout40_47, sout40_48,
                sout40_49, sout40_50, sout40_51, sout40_52, sout40_53, sout40_54, sout40_55, sout40_56, 
                sout40_57, sout40_58, sout40_59, sout40_60, sout40_61, sout40_62, sout40_63, sout40_64;
    
    wire [21:0] sout41_1, sout41_2, sout41_3, sout41_4, sout41_5, sout41_6, sout41_7, sout41_8,
                sout41_9, sout41_10, sout41_11, sout41_12, sout41_13, sout41_14, sout41_15, sout41_16,
                sout41_17, sout41_18, sout41_19, sout41_20, sout41_21, sout41_22, sout41_23, sout41_24, 
                sout41_25, sout41_26, sout41_27, sout41_28, sout41_29, sout41_30, sout41_31, sout41_32,
                sout41_33, sout41_34, sout41_35, sout41_36, sout41_37, sout41_38, sout41_39, sout41_40,
                sout41_41, sout41_42, sout41_43, sout41_44, sout41_45, sout41_46, sout41_47, sout41_48,
                sout41_49, sout41_50, sout41_51, sout41_52, sout41_53, sout41_54, sout41_55, sout41_56, 
                sout41_57, sout41_58, sout41_59, sout41_60, sout41_61, sout41_62, sout41_63, sout41_64;
                  
    wire [21:0] sout42_1, sout42_2, sout42_3, sout42_4, sout42_5, sout42_6, sout42_7, sout42_8,
                sout42_9, sout42_10, sout42_11, sout42_12, sout42_13, sout42_14, sout42_15, sout42_16,
                sout42_17, sout42_18, sout42_19, sout42_20, sout42_21, sout42_22, sout42_23, sout42_24, 
                sout42_25, sout42_26, sout42_27, sout42_28, sout42_29, sout42_30, sout42_31, sout42_32,
                sout42_33, sout42_34, sout42_35, sout42_36, sout42_37, sout42_38, sout42_39, sout42_40,
                sout42_41, sout42_42, sout42_43, sout42_44, sout42_45, sout42_46, sout42_47, sout42_48,
                sout42_49, sout42_50, sout42_51, sout42_52, sout42_53, sout42_54, sout42_55, sout42_56, 
                sout42_57, sout42_58, sout42_59, sout42_60, sout42_61, sout42_62, sout42_63, sout42_64;
                        
    wire [21:0] sout43_1, sout43_2, sout43_3, sout43_4, sout43_5, sout43_6, sout43_7, sout43_8,
                sout43_9, sout43_10, sout43_11, sout43_12, sout43_13, sout43_14, sout43_15, sout43_16,
                sout43_17, sout43_18, sout43_19, sout43_20, sout43_21, sout43_22, sout43_23, sout43_24, 
                sout43_25, sout43_26, sout43_27, sout43_28, sout43_29, sout43_30, sout43_31, sout43_32,
                sout43_33, sout43_34, sout43_35, sout43_36, sout43_37, sout43_38, sout43_39, sout43_40,
                sout43_41, sout43_42, sout43_43, sout43_44, sout43_45, sout43_46, sout43_47, sout43_48,
                sout43_49, sout43_50, sout43_51, sout43_52, sout43_53, sout43_54, sout43_55, sout43_56, 
                sout43_57, sout43_58, sout43_59, sout43_60, sout43_61, sout43_62, sout43_63, sout43_64;
                  
    wire [21:0] sout44_1, sout44_2, sout44_3, sout44_4, sout44_5, sout44_6, sout44_7, sout44_8,
                sout44_9, sout44_10, sout44_11, sout44_12, sout44_13, sout44_14, sout44_15, sout44_16,
                sout44_17, sout44_18, sout44_19, sout44_20, sout44_21, sout44_22, sout44_23, sout44_24, 
                sout44_25, sout44_26, sout44_27, sout44_28, sout44_29, sout44_30, sout44_31, sout44_32,
                sout44_33, sout44_34, sout44_35, sout44_36, sout44_37, sout44_38, sout44_39, sout44_40,
                sout44_41, sout44_42, sout44_43, sout44_44, sout44_45, sout44_46, sout44_47, sout44_48,
                sout44_49, sout44_50, sout44_51, sout44_52, sout44_53, sout44_54, sout44_55, sout44_56, 
                sout44_57, sout44_58, sout44_59, sout44_60, sout44_61, sout44_62, sout44_63, sout44_64;
                  
    wire [21:0] sout45_1, sout45_2, sout45_3, sout45_4, sout45_5, sout45_6, sout45_7, sout45_8,
                sout45_9, sout45_10, sout45_11, sout45_12, sout45_13, sout45_14, sout45_15, sout45_16,
                sout45_17, sout45_18, sout45_19, sout45_20, sout45_21, sout45_22, sout45_23, sout45_24, 
                sout45_25, sout45_26, sout45_27, sout45_28, sout45_29, sout45_30, sout45_31, sout45_32,
                sout45_33, sout45_34, sout45_35, sout45_36, sout45_37, sout45_38, sout45_39, sout45_40,
                sout45_41, sout45_42, sout45_43, sout45_44, sout45_45, sout45_46, sout45_47, sout45_48,
                sout45_49, sout45_50, sout45_51, sout45_52, sout45_53, sout45_54, sout45_55, sout45_56, 
                sout45_57, sout45_58, sout45_59, sout45_60, sout45_61, sout45_62, sout45_63, sout45_64;
                  
    wire [21:0] sout46_1, sout46_2, sout46_3, sout46_4, sout46_5, sout46_6, sout46_7, sout46_8,
                sout46_9, sout46_10, sout46_11, sout46_12, sout46_13, sout46_14, sout46_15, sout46_16,
                sout46_17, sout46_18, sout46_19, sout46_20, sout46_21, sout46_22, sout46_23, sout46_24, 
                sout46_25, sout46_26, sout46_27, sout46_28, sout46_29, sout46_30, sout46_31, sout46_32,
                sout46_33, sout46_34, sout46_35, sout46_36, sout46_37, sout46_38, sout46_39, sout46_40,
                sout46_41, sout46_42, sout46_43, sout46_44, sout46_45, sout46_46, sout46_47, sout46_48,
                sout46_49, sout46_50, sout46_51, sout46_52, sout46_53, sout46_54, sout46_55, sout46_56, 
                sout46_57, sout46_58, sout46_59, sout46_60, sout46_61, sout46_62, sout46_63, sout46_64;
                 
    wire [21:0] sout47_1, sout47_2, sout47_3, sout47_4, sout47_5, sout47_6, sout47_7, sout47_8,
                sout47_9, sout47_10, sout47_11, sout47_12, sout47_13, sout47_14, sout47_15, sout47_16,
                sout47_17, sout47_18, sout47_19, sout47_20, sout47_21, sout47_22, sout47_23, sout47_24, 
                sout47_25, sout47_26, sout47_27, sout47_28, sout47_29, sout47_30, sout47_31, sout47_32,
                sout47_33, sout47_34, sout47_35, sout47_36, sout47_37, sout47_38, sout47_39, sout47_40,
                sout47_41, sout47_42, sout47_43, sout47_44, sout47_45, sout47_46, sout47_47, sout47_48,
                sout47_49, sout47_50, sout47_51, sout47_52, sout47_53, sout47_54, sout47_55, sout47_56, 
                sout47_57, sout47_58, sout47_59, sout47_60, sout47_61, sout47_62, sout47_63, sout47_64;
                  
    wire [21:0] sout48_1, sout48_2, sout48_3, sout48_4, sout48_5, sout48_6, sout48_7, sout48_8,
                sout48_9, sout48_10, sout48_11, sout48_12, sout48_13, sout48_14, sout48_15, sout48_16,
                sout48_17, sout48_18, sout48_19, sout48_20, sout48_21, sout48_22, sout48_23, sout48_24, 
                sout48_25, sout48_26, sout48_27, sout48_28, sout48_29, sout48_30, sout48_31, sout48_32,
                sout48_33, sout48_34, sout48_35, sout48_36, sout48_37, sout48_38, sout48_39, sout48_40,
                sout48_41, sout48_42, sout48_43, sout48_44, sout48_45, sout48_46, sout48_47, sout48_48,
                sout48_49, sout48_50, sout48_51, sout48_52, sout48_53, sout48_54, sout48_55, sout48_56, 
                sout48_57, sout48_58, sout48_59, sout48_60, sout48_61, sout48_62, sout48_63, sout48_64;
                  
    wire [21:0] sout49_1, sout49_2, sout49_3, sout49_4, sout49_5, sout49_6, sout49_7, sout49_8,
                sout49_9, sout49_10, sout49_11, sout49_12, sout49_13, sout49_14, sout49_15, sout49_16,
                sout49_17, sout49_18, sout49_19, sout49_20, sout49_21, sout49_22, sout49_23, sout49_24, 
                sout49_25, sout49_26, sout49_27, sout49_28, sout49_29, sout49_30, sout49_31, sout49_32,
                sout49_33, sout49_34, sout49_35, sout49_36, sout49_37, sout49_38, sout49_39, sout49_40,
                sout49_41, sout49_42, sout49_43, sout49_44, sout49_45, sout49_46, sout49_47, sout49_48,
                sout49_49, sout49_50, sout49_51, sout49_52, sout49_53, sout49_54, sout49_55, sout49_56, 
                sout49_57, sout49_58, sout49_59, sout49_60, sout49_61, sout49_62, sout49_63, sout49_64;
                  
    wire [21:0] sout50_1, sout50_2, sout50_3, sout50_4, sout50_5, sout50_6, sout50_7, sout50_8,
                sout50_9, sout50_10, sout50_11, sout50_12, sout50_13, sout50_14, sout50_15, sout50_16,
                sout50_17, sout50_18, sout50_19, sout50_20, sout50_21, sout50_22, sout50_23, sout50_24, 
                sout50_25, sout50_26, sout50_27, sout50_28, sout50_29, sout50_30, sout50_31, sout50_32,
                sout50_33, sout50_34, sout50_35, sout50_36, sout50_37, sout50_38, sout50_39, sout50_40,
                sout50_41, sout50_42, sout50_43, sout50_44, sout50_45, sout50_46, sout50_47, sout50_48,
                sout50_49, sout50_50, sout50_51, sout50_52, sout50_53, sout50_54, sout50_55, sout50_56, 
                sout50_57, sout50_58, sout50_59, sout50_60, sout50_61, sout50_62, sout50_63, sout50_64;
    
    wire [21:0] sout51_1, sout51_2, sout51_3, sout51_4, sout51_5, sout51_6, sout51_7, sout51_8,
                sout51_9, sout51_10, sout51_11, sout51_12, sout51_13, sout51_14, sout51_15, sout51_16,
                sout51_17, sout51_18, sout51_19, sout51_20, sout51_21, sout51_22, sout51_23, sout51_24, 
                sout51_25, sout51_26, sout51_27, sout51_28, sout51_29, sout51_30, sout51_31, sout51_32,
                sout51_33, sout51_34, sout51_35, sout51_36, sout51_37, sout51_38, sout51_39, sout51_40,
                sout51_41, sout51_42, sout51_43, sout51_44, sout51_45, sout51_46, sout51_47, sout51_48,
                sout51_49, sout51_50, sout51_51, sout51_52, sout51_53, sout51_54, sout51_55, sout51_56, 
                sout51_57, sout51_58, sout51_59, sout51_60, sout51_61, sout51_62, sout51_63, sout51_64;
                              
    wire [21:0] sout52_1, sout52_2, sout52_3, sout52_4, sout52_5, sout52_6, sout52_7, sout52_8,
                sout52_9, sout52_10, sout52_11, sout52_12, sout52_13, sout52_14, sout52_15, sout52_16,
                sout52_17, sout52_18, sout52_19, sout52_20, sout52_21, sout52_22, sout52_23, sout52_24, 
                sout52_25, sout52_26, sout52_27, sout52_28, sout52_29, sout52_30, sout52_31, sout52_32,
                sout52_33, sout52_34, sout52_35, sout52_36, sout52_37, sout52_38, sout52_39, sout52_40,
                sout52_41, sout52_42, sout52_43, sout52_44, sout52_45, sout52_46, sout52_47, sout52_48,
                sout52_49, sout52_50, sout52_51, sout52_52, sout52_53, sout52_54, sout52_55, sout52_56, 
                sout52_57, sout52_58, sout52_59, sout52_60, sout52_61, sout52_62, sout52_63, sout52_64;
                  
    wire [21:0] sout53_1, sout53_2, sout53_3, sout53_4, sout53_5, sout53_6, sout53_7, sout53_8,
                sout53_9, sout53_10, sout53_11, sout53_12, sout53_13, sout53_14, sout53_15, sout53_16,
                sout53_17, sout53_18, sout53_19, sout53_20, sout53_21, sout53_22, sout53_23, sout53_24, 
                sout53_25, sout53_26, sout53_27, sout53_28, sout53_29, sout53_30, sout53_31, sout53_32,
                sout53_33, sout53_34, sout53_35, sout53_36, sout53_37, sout53_38, sout53_39, sout53_40,
                sout53_41, sout53_42, sout53_43, sout53_44, sout53_45, sout53_46, sout53_47, sout53_48,
                sout53_49, sout53_50, sout53_51, sout53_52, sout53_53, sout53_54, sout53_55, sout53_56, 
                sout53_57, sout53_58, sout53_59, sout53_60, sout53_61, sout53_62, sout53_63, sout53_64;
                  
    wire [21:0] sout54_1, sout54_2, sout54_3, sout54_4, sout54_5, sout54_6, sout54_7, sout54_8,
                sout54_9, sout54_10, sout54_11, sout54_12, sout54_13, sout54_14, sout54_15, sout54_16,
                sout54_17, sout54_18, sout54_19, sout54_20, sout54_21, sout54_22, sout54_23, sout54_24, 
                sout54_25, sout54_26, sout54_27, sout54_28, sout54_29, sout54_30, sout54_31, sout54_32,
                sout54_33, sout54_34, sout54_35, sout54_36, sout54_37, sout54_38, sout54_39, sout54_40,
                sout54_41, sout54_42, sout54_43, sout54_44, sout54_45, sout54_46, sout54_47, sout54_48,
                sout54_49, sout54_50, sout54_51, sout54_52, sout54_53, sout54_54, sout54_55, sout54_56, 
                sout54_57, sout54_58, sout54_59, sout54_60, sout54_61, sout54_62, sout54_63, sout54_64;
                  
    wire [21:0] sout55_1, sout55_2, sout55_3, sout55_4, sout55_5, sout55_6, sout55_7, sout55_8,
                sout55_9, sout55_10, sout55_11, sout55_12, sout55_13, sout55_14, sout55_15, sout55_16,
                sout55_17, sout55_18, sout55_19, sout55_20, sout55_21, sout55_22, sout55_23, sout55_24, 
                sout55_25, sout55_26, sout55_27, sout55_28, sout55_29, sout55_30, sout55_31, sout55_32,
                sout55_33, sout55_34, sout55_35, sout55_36, sout55_37, sout55_38, sout55_39, sout55_40,
                sout55_41, sout55_42, sout55_43, sout55_44, sout55_45, sout55_46, sout55_47, sout55_48,
                sout55_49, sout55_50, sout55_51, sout55_52, sout55_53, sout55_54, sout55_55, sout55_56, 
                sout55_57, sout55_58, sout55_59, sout55_60, sout55_61, sout55_62, sout55_63, sout55_64;
                  
    wire [21:0] sout56_1, sout56_2, sout56_3, sout56_4, sout56_5, sout56_6, sout56_7, sout56_8,
                sout56_9, sout56_10, sout56_11, sout56_12, sout56_13, sout56_14, sout56_15, sout56_16,
                sout56_17, sout56_18, sout56_19, sout56_20, sout56_21, sout56_22, sout56_23, sout56_24, 
                sout56_25, sout56_26, sout56_27, sout56_28, sout56_29, sout56_30, sout56_31, sout56_32,
                sout56_33, sout56_34, sout56_35, sout56_36, sout56_37, sout56_38, sout56_39, sout56_40,
                sout56_41, sout56_42, sout56_43, sout56_44, sout56_45, sout56_46, sout56_47, sout56_48,
                sout56_49, sout56_50, sout56_51, sout56_52, sout56_53, sout56_54, sout56_55, sout56_56, 
                sout56_57, sout56_58, sout56_59, sout56_60, sout56_61, sout56_62, sout56_63, sout56_64;
                  
    wire [21:0] sout57_1, sout57_2, sout57_3, sout57_4, sout57_5, sout57_6, sout57_7, sout57_8,
                sout57_9, sout57_10, sout57_11, sout57_12, sout57_13, sout57_14, sout57_15, sout57_16,
                sout57_17, sout57_18, sout57_19, sout57_20, sout57_21, sout57_22, sout57_23, sout57_24, 
                sout57_25, sout57_26, sout57_27, sout57_28, sout57_29, sout57_30, sout57_31, sout57_32,
                sout57_33, sout57_34, sout57_35, sout57_36, sout57_37, sout57_38, sout57_39, sout57_40,
                sout57_41, sout57_42, sout57_43, sout57_44, sout57_45, sout57_46, sout57_47, sout57_48,
                sout57_49, sout57_50, sout57_51, sout57_52, sout57_53, sout57_54, sout57_55, sout57_56, 
                sout57_57, sout57_58, sout57_59, sout57_60, sout57_61, sout57_62, sout57_63, sout57_64;
                  
    wire [21:0] sout58_1, sout58_2, sout58_3, sout58_4, sout58_5, sout58_6, sout58_7, sout58_8,
                sout58_9, sout58_10, sout58_11, sout58_12, sout58_13, sout58_14, sout58_15, sout58_16,
                sout58_17, sout58_18, sout58_19, sout58_20, sout58_21, sout58_22, sout58_23, sout58_24, 
                sout58_25, sout58_26, sout58_27, sout58_28, sout58_29, sout58_30, sout58_31, sout58_32,
                sout58_33, sout58_34, sout58_35, sout58_36, sout58_37, sout58_38, sout58_39, sout58_40,
                sout58_41, sout58_42, sout58_43, sout58_44, sout58_45, sout58_46, sout58_47, sout58_48,
                sout58_49, sout58_50, sout58_51, sout58_52, sout58_53, sout58_54, sout58_55, sout58_56, 
                sout58_57, sout58_58, sout58_59, sout58_60, sout58_61, sout58_62, sout58_63, sout58_64;
                  
    wire [21:0] sout59_1, sout59_2, sout59_3, sout59_4, sout59_5, sout59_6, sout59_7, sout59_8,
                sout59_9, sout59_10, sout59_11, sout59_12, sout59_13, sout59_14, sout59_15, sout59_16,
                sout59_17, sout59_18, sout59_19, sout59_20, sout59_21, sout59_22, sout59_23, sout59_24, 
                sout59_25, sout59_26, sout59_27, sout59_28, sout59_29, sout59_30, sout59_31, sout59_32,
                sout59_33, sout59_34, sout59_35, sout59_36, sout59_37, sout59_38, sout59_39, sout59_40,
                sout59_41, sout59_42, sout59_43, sout59_44, sout59_45, sout59_46, sout59_47, sout59_48,
                sout59_49, sout59_50, sout59_51, sout59_52, sout59_53, sout59_54, sout59_55, sout59_56, 
                sout59_57, sout59_58, sout59_59, sout59_60, sout59_61, sout59_62, sout59_63, sout59_64;
                  
    wire [21:0] sout60_1, sout60_2, sout60_3, sout60_4, sout60_5, sout60_6, sout60_7, sout60_8,
                sout60_9, sout60_10, sout60_11, sout60_12, sout60_13, sout60_14, sout60_15, sout60_16,
                sout60_17, sout60_18, sout60_19, sout60_20, sout60_21, sout60_22, sout60_23, sout60_24, 
                sout60_25, sout60_26, sout60_27, sout60_28, sout60_29, sout60_30, sout60_31, sout60_32,
                sout60_33, sout60_34, sout60_35, sout60_36, sout60_37, sout60_38, sout60_39, sout60_40,
                sout60_41, sout60_42, sout60_43, sout60_44, sout60_45, sout60_46, sout60_47, sout60_48,
                sout60_49, sout60_50, sout60_51, sout60_52, sout60_53, sout60_54, sout60_55, sout60_56, 
                sout60_57, sout60_58, sout60_59, sout60_60, sout60_61, sout60_62, sout60_63, sout60_64;
                  
    wire [21:0] sout61_1, sout61_2, sout61_3, sout61_4, sout61_5, sout61_6, sout61_7, sout61_8,
                sout61_9, sout61_10, sout61_11, sout61_12, sout61_13, sout61_14, sout61_15, sout61_16,
                sout61_17, sout61_18, sout61_19, sout61_20, sout61_21, sout61_22, sout61_23, sout61_24, 
                sout61_25, sout61_26, sout61_27, sout61_28, sout61_29, sout61_30, sout61_31, sout61_32,
                sout61_33, sout61_34, sout61_35, sout61_36, sout61_37, sout61_38, sout61_39, sout61_40,
                sout61_41, sout61_42, sout61_43, sout61_44, sout61_45, sout61_46, sout61_47, sout61_48,
                sout61_49, sout61_50, sout61_51, sout61_52, sout61_53, sout61_54, sout61_55, sout61_56, 
                sout61_57, sout61_58, sout61_59, sout61_60, sout61_61, sout61_62, sout61_63, sout61_64;
                  
    wire [21:0] sout62_1, sout62_2, sout62_3, sout62_4, sout62_5, sout62_6, sout62_7, sout62_8,
                sout62_9, sout62_10, sout62_11, sout62_12, sout62_13, sout62_14, sout62_15, sout62_16,
                sout62_17, sout62_18, sout62_19, sout62_20, sout62_21, sout62_22, sout62_23, sout62_24, 
                sout62_25, sout62_26, sout62_27, sout62_28, sout62_29, sout62_30, sout62_31, sout62_32,
                sout62_33, sout62_34, sout62_35, sout62_36, sout62_37, sout62_38, sout62_39, sout62_40,
                sout62_41, sout62_42, sout62_43, sout62_44, sout62_45, sout62_46, sout62_47, sout62_48,
                sout62_49, sout62_50, sout62_51, sout62_52, sout62_53, sout62_54, sout62_55, sout62_56, 
                sout62_57, sout62_58, sout62_59, sout62_60, sout62_61, sout62_62, sout62_63, sout62_64;
                  
    wire [21:0] sout63_1, sout63_2, sout63_3, sout63_4, sout63_5, sout63_6, sout63_7, sout63_8,
                sout63_9, sout63_10, sout63_11, sout63_12, sout63_13, sout63_14, sout63_15, sout63_16,
                sout63_17, sout63_18, sout63_19, sout63_20, sout63_21, sout63_22, sout63_23, sout63_24, 
                sout63_25, sout63_26, sout63_27, sout63_28, sout63_29, sout63_30, sout63_31, sout63_32,
                sout63_33, sout63_34, sout63_35, sout63_36, sout63_37, sout63_38, sout63_39, sout63_40,
                sout63_41, sout63_42, sout63_43, sout63_44, sout63_45, sout63_46, sout63_47, sout63_48,
                sout63_49, sout63_50, sout63_51, sout63_52, sout63_53, sout63_54, sout63_55, sout63_56, 
                sout63_57, sout63_58, sout63_59, sout63_60, sout63_61, sout63_62, sout63_63, sout63_64;
                  
    wire [21:0] sout64_1, sout64_2, sout64_3, sout64_4, sout64_5, sout64_6, sout64_7, sout64_8,
                sout64_9, sout64_10, sout64_11, sout64_12, sout64_13, sout64_14, sout64_15, sout64_16,
                sout64_17, sout64_18, sout64_19, sout64_20, sout64_21, sout64_22, sout64_23, sout64_24, 
                sout64_25, sout64_26, sout64_27, sout64_28, sout64_29, sout64_30, sout64_31, sout64_32,
                sout64_33, sout64_34, sout64_35, sout64_36, sout64_37, sout64_38, sout64_39, sout64_40,
                sout64_41, sout64_42, sout64_43, sout64_44, sout64_45, sout64_46, sout64_47, sout64_48,
                sout64_49, sout64_50, sout64_51, sout64_52, sout64_53, sout64_54, sout64_55, sout64_56, 
                sout64_57, sout64_58, sout64_59, sout64_60, sout64_61, sout64_62, sout64_63, sout64_64;  
                
       
    //mac_array_64x64
    mac_array_64x64 DUT( clk, rst,
    ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
    ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16, 
    ain17, ain18, ain19, ain20, ain21, ain22, ain23, ain24, 
    ain25, ain26, ain27, ain28, ain29, ain30, ain31, ain32, 
    ain33, ain34, ain35, ain36, ain37, ain38, ain39, ain40, 
    ain41, ain42, ain43, ain44, ain45, ain46, ain47, ain48,
    ain49, ain50, ain51, ain52, ain53, ain54, ain55, ain56,
    ain57, ain58, ain59, ain60, ain61, ain62, ain63, ain64,
    
    win1, win2, win3, win4, win5, win6, win7, win8,
    win9, win10, win11, win12, win13, win14, win15, win16, 
    win17, win18, win19, win20, win21, win22, win23, win24, 
    win25, win26, win27, win28, win29, win30, win31, win32, 
    win33, win34, win35, win36, win37, win38, win39, win40, 
    win41, win42, win43, win44, win45, win46, win47, win48,
    win49, win50, win51, win52, win53, win54, win55, win56,
    win57, win58, win59, win60, win61, win62, win63, win64,
     
    sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
    sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16,
    sout1_17, sout1_18, sout1_19, sout1_20, sout1_21, sout1_22, sout1_23, sout1_24, 
    sout1_25, sout1_26, sout1_27, sout1_28, sout1_29, sout1_30, sout1_31, sout1_32,
    sout1_33, sout1_34, sout1_35, sout1_36, sout1_37, sout1_38, sout1_39, sout1_40,
    sout1_41, sout1_42, sout1_43, sout1_44, sout1_45, sout1_46, sout1_47, sout1_48,
    sout1_49, sout1_50, sout1_51, sout1_52, sout1_53, sout1_54, sout1_55, sout1_56, 
    sout1_57, sout1_58, sout1_59, sout1_60, sout1_61, sout1_62, sout1_63, sout1_64,
    
    sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
    sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16,
    sout2_17, sout2_18, sout2_19, sout2_20, sout2_21, sout2_22, sout2_23, sout2_24, 
    sout2_25, sout2_26, sout2_27, sout2_28, sout2_29, sout2_30, sout2_31, sout2_32,
    sout2_33, sout2_34, sout2_35, sout2_36, sout2_37, sout2_38, sout2_39, sout2_40,
    sout2_41, sout2_42, sout2_43, sout2_44, sout2_45, sout2_46, sout2_47, sout2_48,
    sout2_49, sout2_50, sout2_51, sout2_52, sout2_53, sout2_54, sout2_55, sout2_56, 
    sout2_57, sout2_58, sout2_59, sout2_60, sout2_61, sout2_62, sout2_63, sout2_64,
    
    sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
    sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16,
    sout3_17, sout3_18, sout3_19, sout3_20, sout3_21, sout3_22, sout3_23, sout3_24, 
    sout3_25, sout3_26, sout3_27, sout3_28, sout3_29, sout3_30, sout3_31, sout3_32,
    sout3_33, sout3_34, sout3_35, sout3_36, sout3_37, sout3_38, sout3_39, sout3_40,
    sout3_41, sout3_42, sout3_43, sout3_44, sout3_45, sout3_46, sout3_47, sout3_48,
    sout3_49, sout3_50, sout3_51, sout3_52, sout3_53, sout3_54, sout3_55, sout3_56, 
    sout3_57, sout3_58, sout3_59, sout3_60, sout3_61, sout3_62, sout3_63, sout3_64,
    
    sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
    sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16,
    sout4_17, sout4_18, sout4_19, sout4_20, sout4_21, sout4_22, sout4_23, sout4_24, 
    sout4_25, sout4_26, sout4_27, sout4_28, sout4_29, sout4_30, sout4_31, sout4_32,
    sout4_33, sout4_34, sout4_35, sout4_36, sout4_37, sout4_38, sout4_39, sout4_40,
    sout4_41, sout4_42, sout4_43, sout4_44, sout4_45, sout4_46, sout4_47, sout4_48,
    sout4_49, sout4_50, sout4_51, sout4_52, sout4_53, sout4_54, sout4_55, sout4_56, 
    sout4_57, sout4_58, sout4_59, sout4_60, sout4_61, sout4_62, sout4_63, sout4_64,
    
    sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
    sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16,
    sout5_17, sout5_18, sout5_19, sout5_20, sout5_21, sout5_22, sout5_23, sout5_24, 
    sout5_25, sout5_26, sout5_27, sout5_28, sout5_29, sout5_30, sout5_31, sout5_32,
    sout5_33, sout5_34, sout5_35, sout5_36, sout5_37, sout5_38, sout5_39, sout5_40,
    sout5_41, sout5_42, sout5_43, sout5_44, sout5_45, sout5_46, sout5_47, sout5_48,
    sout5_49, sout5_50, sout5_51, sout5_52, sout5_53, sout5_54, sout5_55, sout5_56, 
    sout5_57, sout5_58, sout5_59, sout5_60, sout5_61, sout5_62, sout5_63, sout5_64,
    
    sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
    sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16,
    sout6_17, sout6_18, sout6_19, sout6_20, sout6_21, sout6_22, sout6_23, sout6_24, 
    sout6_25, sout6_26, sout6_27, sout6_28, sout6_29, sout6_30, sout6_31, sout6_32,
    sout6_33, sout6_34, sout6_35, sout6_36, sout6_37, sout6_38, sout6_39, sout6_40,
    sout6_41, sout6_42, sout6_43, sout6_44, sout6_45, sout6_46, sout6_47, sout6_48,
    sout6_49, sout6_50, sout6_51, sout6_52, sout6_53, sout6_54, sout6_55, sout6_56, 
    sout6_57, sout6_58, sout6_59, sout6_60, sout6_61, sout6_62, sout6_63, sout6_64, 
    
    sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
    sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16,
    sout7_17, sout7_18, sout7_19, sout7_20, sout7_21, sout7_22, sout7_23, sout7_24, 
    sout7_25, sout7_26, sout7_27, sout7_28, sout7_29, sout7_30, sout7_31, sout7_32,
    sout7_33, sout7_34, sout7_35, sout7_36, sout7_37, sout7_38, sout7_39, sout7_40,
    sout7_41, sout7_42, sout7_43, sout7_44, sout7_45, sout7_46, sout7_47, sout7_48,
    sout7_49, sout7_50, sout7_51, sout7_52, sout7_53, sout7_54, sout7_55, sout7_56, 
    sout7_57, sout7_58, sout7_59, sout7_60, sout7_61, sout7_62, sout7_63, sout7_64, 
    
    sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
    sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16,
    sout8_17, sout8_18, sout8_19, sout8_20, sout8_21, sout8_22, sout8_23, sout8_24, 
    sout8_25, sout8_26, sout8_27, sout8_28, sout8_29, sout8_30, sout8_31, sout8_32,
    sout8_33, sout8_34, sout8_35, sout8_36, sout8_37, sout8_38, sout8_39, sout8_40,
    sout8_41, sout8_42, sout8_43, sout8_44, sout8_45, sout8_46, sout8_47, sout8_48,
    sout8_49, sout8_50, sout8_51, sout8_52, sout8_53, sout8_54, sout8_55, sout8_56, 
    sout8_57, sout8_58, sout8_59, sout8_60, sout8_61, sout8_62, sout8_63, sout8_64,
    
    sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
    sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16,
    sout9_17, sout9_18, sout9_19, sout9_20, sout9_21, sout9_22, sout9_23, sout9_24, 
    sout9_25, sout9_26, sout9_27, sout9_28, sout9_29, sout9_30, sout9_31, sout9_32,
    sout9_33, sout9_34, sout9_35, sout9_36, sout9_37, sout9_38, sout9_39, sout9_40,
    sout9_41, sout9_42, sout9_43, sout9_44, sout9_45, sout9_46, sout9_47, sout9_48,
    sout9_49, sout9_50, sout9_51, sout9_52, sout9_53, sout9_54, sout9_55, sout9_56, 
    sout9_57, sout9_58, sout9_59, sout9_60, sout9_61, sout9_62, sout9_63, sout9_64,
    
    sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
    sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16,
    sout10_17, sout10_18, sout10_19, sout10_20, sout10_21, sout10_22, sout10_23, sout10_24, 
    sout10_25, sout10_26, sout10_27, sout10_28, sout10_29, sout10_30, sout10_31, sout10_32,
    sout10_33, sout10_34, sout10_35, sout10_36, sout10_37, sout10_38, sout10_39, sout10_40,
    sout10_41, sout10_42, sout10_43, sout10_44, sout10_45, sout10_46, sout10_47, sout10_48,
    sout10_49, sout10_50, sout10_51, sout10_52, sout10_53, sout10_54, sout10_55, sout10_56, 
    sout10_57, sout10_58, sout10_59, sout10_60, sout10_61, sout10_62, sout10_63, sout10_64,
    
    sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
    sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16,
    sout11_17, sout11_18, sout11_19, sout11_20, sout11_21, sout11_22, sout11_23, sout11_24, 
    sout11_25, sout11_26, sout11_27, sout11_28, sout11_29, sout11_30, sout11_31, sout11_32,
    sout11_33, sout11_34, sout11_35, sout11_36, sout11_37, sout11_38, sout11_39, sout11_40,
    sout11_41, sout11_42, sout11_43, sout11_44, sout11_45, sout11_46, sout11_47, sout11_48,
    sout11_49, sout11_50, sout11_51, sout11_52, sout11_53, sout11_54, sout11_55, sout11_56, 
    sout11_57, sout11_58, sout11_59, sout11_60, sout11_61, sout11_62, sout11_63, sout11_64,
    
    sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
    sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16,
    sout12_17, sout12_18, sout12_19, sout12_20, sout12_21, sout12_22, sout12_23, sout12_24, 
    sout12_25, sout12_26, sout12_27, sout12_28, sout12_29, sout12_30, sout12_31, sout12_32,
    sout12_33, sout12_34, sout12_35, sout12_36, sout12_37, sout12_38, sout12_39, sout12_40,
    sout12_41, sout12_42, sout12_43, sout12_44, sout12_45, sout12_46, sout12_47, sout12_48,
    sout12_49, sout12_50, sout12_51, sout12_52, sout12_53, sout12_54, sout12_55, sout12_56, 
    sout12_57, sout12_58, sout12_59, sout12_60, sout12_61, sout12_62, sout12_63, sout12_64,
    
    sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
    sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16,
    sout13_17, sout13_18, sout13_19, sout13_20, sout13_21, sout13_22, sout13_23, sout13_24, 
    sout13_25, sout13_26, sout13_27, sout13_28, sout13_29, sout13_30, sout13_31, sout13_32,
    sout13_33, sout13_34, sout13_35, sout13_36, sout13_37, sout13_38, sout13_39, sout13_40,
    sout13_41, sout13_42, sout13_43, sout13_44, sout13_45, sout13_46, sout13_47, sout13_48,
    sout13_49, sout13_50, sout13_51, sout13_52, sout13_53, sout13_54, sout13_55, sout13_56, 
    sout13_57, sout13_58, sout13_59, sout13_60, sout13_61, sout13_62, sout13_63, sout13_64,
    
    sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
    sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16,
    sout14_17, sout14_18, sout14_19, sout14_20, sout14_21, sout14_22, sout14_23, sout14_24, 
    sout14_25, sout14_26, sout14_27, sout14_28, sout14_29, sout14_30, sout14_31, sout14_32,
    sout14_33, sout14_34, sout14_35, sout14_36, sout14_37, sout14_38, sout14_39, sout14_40,
    sout14_41, sout14_42, sout14_43, sout14_44, sout14_45, sout14_46, sout14_47, sout14_48,
    sout14_49, sout14_50, sout14_51, sout14_52, sout14_53, sout14_54, sout14_55, sout14_56, 
    sout14_57, sout14_58, sout14_59, sout14_60, sout14_61, sout14_62, sout14_63, sout14_64,
    
    sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
    sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16,
    sout15_17, sout15_18, sout15_19, sout15_20, sout15_21, sout15_22, sout15_23, sout15_24, 
    sout15_25, sout15_26, sout15_27, sout15_28, sout15_29, sout15_30, sout15_31, sout15_32,
    sout15_33, sout15_34, sout15_35, sout15_36, sout15_37, sout15_38, sout15_39, sout15_40,
    sout15_41, sout15_42, sout15_43, sout15_44, sout15_45, sout15_46, sout15_47, sout15_48,
    sout15_49, sout15_50, sout15_51, sout15_52, sout15_53, sout15_54, sout15_55, sout15_56, 
    sout15_57, sout15_58, sout15_59, sout15_60, sout15_61, sout15_62, sout15_63, sout15_64,
    
    sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
    sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16,
    sout16_17, sout16_18, sout16_19, sout16_20, sout16_21, sout16_22, sout16_23, sout16_24, 
    sout16_25, sout16_26, sout16_27, sout16_28, sout16_29, sout16_30, sout16_31, sout16_32,
    sout16_33, sout16_34, sout16_35, sout16_36, sout16_37, sout16_38, sout16_39, sout16_40,
    sout16_41, sout16_42, sout16_43, sout16_44, sout16_45, sout16_46, sout16_47, sout16_48,
    sout16_49, sout16_50, sout16_51, sout16_52, sout16_53, sout16_54, sout16_55, sout16_56, 
    sout16_57, sout16_58, sout16_59, sout16_60, sout16_61, sout16_62, sout16_63, sout16_64,
    
    sout17_1, sout17_2, sout17_3, sout17_4, sout17_5, sout17_6, sout17_7, sout17_8,
    sout17_9, sout17_10, sout17_11, sout17_12, sout17_13, sout17_14, sout17_15, sout17_16,
    sout17_17, sout17_18, sout17_19, sout17_20, sout17_21, sout17_22, sout17_23, sout17_24, 
    sout17_25, sout17_26, sout17_27, sout17_28, sout17_29, sout17_30, sout17_31, sout17_32,
    sout17_33, sout17_34, sout17_35, sout17_36, sout17_37, sout17_38, sout17_39, sout17_40,
    sout17_41, sout17_42, sout17_43, sout17_44, sout17_45, sout17_46, sout17_47, sout17_48,
    sout17_49, sout17_50, sout17_51, sout17_52, sout17_53, sout17_54, sout17_55, sout17_56, 
    sout17_57, sout17_58, sout17_59, sout17_60, sout17_61, sout17_62, sout17_63, sout17_64,
    
    sout18_1, sout18_2, sout18_3, sout18_4, sout18_5, sout18_6, sout18_7, sout18_8,
    sout18_9, sout18_10, sout18_11, sout18_12, sout18_13, sout18_14, sout18_15, sout18_16,
    sout18_17, sout18_18, sout18_19, sout18_20, sout18_21, sout18_22, sout18_23, sout18_24, 
    sout18_25, sout18_26, sout18_27, sout18_28, sout18_29, sout18_30, sout18_31, sout18_32,
    sout18_33, sout18_34, sout18_35, sout18_36, sout18_37, sout18_38, sout18_39, sout18_40,
    sout18_41, sout18_42, sout18_43, sout18_44, sout18_45, sout18_46, sout18_47, sout18_48,
    sout18_49, sout18_50, sout18_51, sout18_52, sout18_53, sout18_54, sout18_55, sout18_56, 
    sout18_57, sout18_58, sout18_59, sout18_60, sout18_61, sout18_62, sout18_63, sout18_64,
    
    sout19_1, sout19_2, sout19_3, sout19_4, sout19_5, sout19_6, sout19_7, sout19_8,
    sout19_9, sout19_10, sout19_11, sout19_12, sout19_13, sout19_14, sout19_15, sout19_16,
    sout19_17, sout19_18, sout19_19, sout19_20, sout19_21, sout19_22, sout19_23, sout19_24, 
    sout19_25, sout19_26, sout19_27, sout19_28, sout19_29, sout19_30, sout19_31, sout19_32,
    sout19_33, sout19_34, sout19_35, sout19_36, sout19_37, sout19_38, sout19_39, sout19_40,
    sout19_41, sout19_42, sout19_43, sout19_44, sout19_45, sout19_46, sout19_47, sout19_48,
    sout19_49, sout19_50, sout19_51, sout19_52, sout19_53, sout19_54, sout19_55, sout19_56, 
    sout19_57, sout19_58, sout19_59, sout19_60, sout19_61, sout19_62, sout19_63, sout19_64,
    
    sout20_1, sout20_2, sout20_3, sout20_4, sout20_5, sout20_6, sout20_7, sout20_8,
    sout20_9, sout20_10, sout20_11, sout20_12, sout20_13, sout20_14, sout20_15, sout20_16,
    sout20_17, sout20_18, sout20_19, sout20_20, sout20_21, sout20_22, sout20_23, sout20_24, 
    sout20_25, sout20_26, sout20_27, sout20_28, sout20_29, sout20_30, sout20_31, sout20_32,
    sout20_33, sout20_34, sout20_35, sout20_36, sout20_37, sout20_38, sout20_39, sout20_40,
    sout20_41, sout20_42, sout20_43, sout20_44, sout20_45, sout20_46, sout20_47, sout20_48,
    sout20_49, sout20_50, sout20_51, sout20_52, sout20_53, sout20_54, sout20_55, sout20_56, 
    sout20_57, sout20_58, sout20_59, sout20_60, sout20_61, sout20_62, sout20_63, sout20_64,
    
    sout21_1, sout21_2, sout21_3, sout21_4, sout21_5, sout21_6, sout21_7, sout21_8,
    sout21_9, sout21_10, sout21_11, sout21_12, sout21_13, sout21_14, sout21_15, sout21_16,
    sout21_17, sout21_18, sout21_19, sout21_20, sout21_21, sout21_22, sout21_23, sout21_24, 
    sout21_25, sout21_26, sout21_27, sout21_28, sout21_29, sout21_30, sout21_31, sout21_32,
    sout21_33, sout21_34, sout21_35, sout21_36, sout21_37, sout21_38, sout21_39, sout21_40,
    sout21_41, sout21_42, sout21_43, sout21_44, sout21_45, sout21_46, sout21_47, sout21_48,
    sout21_49, sout21_50, sout21_51, sout21_52, sout21_53, sout21_54, sout21_55, sout21_56, 
    sout21_57, sout21_58, sout21_59, sout21_60, sout21_61, sout21_62, sout21_63, sout21_64,
    
    sout22_1, sout22_2, sout22_3, sout22_4, sout22_5, sout22_6, sout22_7, sout22_8,
    sout22_9, sout22_10, sout22_11, sout22_12, sout22_13, sout22_14, sout22_15, sout22_16,
    sout22_17, sout22_18, sout22_19, sout22_20, sout22_21, sout22_22, sout22_23, sout22_24, 
    sout22_25, sout22_26, sout22_27, sout22_28, sout22_29, sout22_30, sout22_31, sout22_32,
    sout22_33, sout22_34, sout22_35, sout22_36, sout22_37, sout22_38, sout22_39, sout22_40,
    sout22_41, sout22_42, sout22_43, sout22_44, sout22_45, sout22_46, sout22_47, sout22_48,
    sout22_49, sout22_50, sout22_51, sout22_52, sout22_53, sout22_54, sout22_55, sout22_56, 
    sout22_57, sout22_58, sout22_59, sout22_60, sout22_61, sout22_62, sout22_63, sout22_64,
    
    sout23_1, sout23_2, sout23_3, sout23_4, sout23_5, sout23_6, sout23_7, sout23_8,
    sout23_9, sout23_10, sout23_11, sout23_12, sout23_13, sout23_14, sout23_15, sout23_16,
    sout23_17, sout23_18, sout23_19, sout23_20, sout23_21, sout23_22, sout23_23, sout23_24, 
    sout23_25, sout23_26, sout23_27, sout23_28, sout23_29, sout23_30, sout23_31, sout23_32,
    sout23_33, sout23_34, sout23_35, sout23_36, sout23_37, sout23_38, sout23_39, sout23_40,
    sout23_41, sout23_42, sout23_43, sout23_44, sout23_45, sout23_46, sout23_47, sout23_48,
    sout23_49, sout23_50, sout23_51, sout23_52, sout23_53, sout23_54, sout23_55, sout23_56, 
    sout23_57, sout23_58, sout23_59, sout23_60, sout23_61, sout23_62, sout23_63, sout23_64,
    
    sout24_1, sout24_2, sout24_3, sout24_4, sout24_5, sout24_6, sout24_7, sout24_8,
    sout24_9, sout24_10, sout24_11, sout24_12, sout24_13, sout24_14, sout24_15, sout24_16,
    sout24_17, sout24_18, sout24_19, sout24_20, sout24_21, sout24_22, sout24_23, sout24_24, 
    sout24_25, sout24_26, sout24_27, sout24_28, sout24_29, sout24_30, sout24_31, sout24_32,
    sout24_33, sout24_34, sout24_35, sout24_36, sout24_37, sout24_38, sout24_39, sout24_40,
    sout24_41, sout24_42, sout24_43, sout24_44, sout24_45, sout24_46, sout24_47, sout24_48,
    sout24_49, sout24_50, sout24_51, sout24_52, sout24_53, sout24_54, sout24_55, sout24_56, 
    sout24_57, sout24_58, sout24_59, sout24_60, sout24_61, sout24_62, sout24_63, sout24_64,
    
    sout25_1, sout25_2, sout25_3, sout25_4, sout25_5, sout25_6, sout25_7, sout25_8,
    sout25_9, sout25_10, sout25_11, sout25_12, sout25_13, sout25_14, sout25_15, sout25_16,
    sout25_17, sout25_18, sout25_19, sout25_20, sout25_21, sout25_22, sout25_23, sout25_24, 
    sout25_25, sout25_26, sout25_27, sout25_28, sout25_29, sout25_30, sout25_31, sout25_32,
    sout25_33, sout25_34, sout25_35, sout25_36, sout25_37, sout25_38, sout25_39, sout25_40,
    sout25_41, sout25_42, sout25_43, sout25_44, sout25_45, sout25_46, sout25_47, sout25_48,
    sout25_49, sout25_50, sout25_51, sout25_52, sout25_53, sout25_54, sout25_55, sout25_56, 
    sout25_57, sout25_58, sout25_59, sout25_60, sout25_61, sout25_62, sout25_63, sout25_64,
    
    sout26_1, sout26_2, sout26_3, sout26_4, sout26_5, sout26_6, sout26_7, sout26_8,
    sout26_9, sout26_10, sout26_11, sout26_12, sout26_13, sout26_14, sout26_15, sout26_16,
    sout26_17, sout26_18, sout26_19, sout26_20, sout26_21, sout26_22, sout26_23, sout26_24, 
    sout26_25, sout26_26, sout26_27, sout26_28, sout26_29, sout26_30, sout26_31, sout26_32,
    sout26_33, sout26_34, sout26_35, sout26_36, sout26_37, sout26_38, sout26_39, sout26_40,
    sout26_41, sout26_42, sout26_43, sout26_44, sout26_45, sout26_46, sout26_47, sout26_48,
    sout26_49, sout26_50, sout26_51, sout26_52, sout26_53, sout26_54, sout26_55, sout26_56, 
    sout26_57, sout26_58, sout26_59, sout26_60, sout26_61, sout26_62, sout26_63, sout26_64, 
    
    sout27_1, sout27_2, sout27_3, sout27_4, sout27_5, sout27_6, sout27_7, sout27_8,
    sout27_9, sout27_10, sout27_11, sout27_12, sout27_13, sout27_14, sout27_15, sout27_16,
    sout27_17, sout27_18, sout27_19, sout27_20, sout27_21, sout27_22, sout27_23, sout27_24, 
    sout27_25, sout27_26, sout27_27, sout27_28, sout27_29, sout27_30, sout27_31, sout27_32,
    sout27_33, sout27_34, sout27_35, sout27_36, sout27_37, sout27_38, sout27_39, sout27_40,
    sout27_41, sout27_42, sout27_43, sout27_44, sout27_45, sout27_46, sout27_47, sout27_48,
    sout27_49, sout27_50, sout27_51, sout27_52, sout27_53, sout27_54, sout27_55, sout27_56, 
    sout27_57, sout27_58, sout27_59, sout27_60, sout27_61, sout27_62, sout27_63, sout27_64,
    
    sout28_1, sout28_2, sout28_3, sout28_4, sout28_5, sout28_6, sout28_7, sout28_8,
    sout28_9, sout28_10, sout28_11, sout28_12, sout28_13, sout28_14, sout28_15, sout28_16,
    sout28_17, sout28_18, sout28_19, sout28_20, sout28_21, sout28_22, sout28_23, sout28_24, 
    sout28_25, sout28_26, sout28_27, sout28_28, sout28_29, sout28_30, sout28_31, sout28_32,
    sout28_33, sout28_34, sout28_35, sout28_36, sout28_37, sout28_38, sout28_39, sout28_40,
    sout28_41, sout28_42, sout28_43, sout28_44, sout28_45, sout28_46, sout28_47, sout28_48,
    sout28_49, sout28_50, sout28_51, sout28_52, sout28_53, sout28_54, sout28_55, sout28_56, 
    sout28_57, sout28_58, sout28_59, sout28_60, sout28_61, sout28_62, sout28_63, sout28_64,
    
    sout29_1, sout29_2, sout29_3, sout29_4, sout29_5, sout29_6, sout29_7, sout29_8,
    sout29_9, sout29_10, sout29_11, sout29_12, sout29_13, sout29_14, sout29_15, sout29_16,
    sout29_17, sout29_18, sout29_19, sout29_20, sout29_21, sout29_22, sout29_23, sout29_24, 
    sout29_25, sout29_26, sout29_27, sout29_28, sout29_29, sout29_30, sout29_31, sout29_32,
    sout29_33, sout29_34, sout29_35, sout29_36, sout29_37, sout29_38, sout29_39, sout29_40,
    sout29_41, sout29_42, sout29_43, sout29_44, sout29_45, sout29_46, sout29_47, sout29_48,
    sout29_49, sout29_50, sout29_51, sout29_52, sout29_53, sout29_54, sout29_55, sout29_56, 
    sout29_57, sout29_58, sout29_59, sout29_60, sout29_61, sout29_62, sout29_63, sout29_64,
    
    sout30_1, sout30_2, sout30_3, sout30_4, sout30_5, sout30_6, sout30_7, sout30_8,
    sout30_9, sout30_10, sout30_11, sout30_12, sout30_13, sout30_14, sout30_15, sout30_16,
    sout30_17, sout30_18, sout30_19, sout30_20, sout30_21, sout30_22, sout30_23, sout30_24, 
    sout30_25, sout30_26, sout30_27, sout30_28, sout30_29, sout30_30, sout30_31, sout30_32,
    sout30_33, sout30_34, sout30_35, sout30_36, sout30_37, sout30_38, sout30_39, sout30_40,
    sout30_41, sout30_42, sout30_43, sout30_44, sout30_45, sout30_46, sout30_47, sout30_48,
    sout30_49, sout30_50, sout30_51, sout30_52, sout30_53, sout30_54, sout30_55, sout30_56, 
    sout30_57, sout30_58, sout30_59, sout30_60, sout30_61, sout30_62, sout30_63, sout30_64,
    
    sout31_1, sout31_2, sout31_3, sout31_4, sout31_5, sout31_6, sout31_7, sout31_8,
    sout31_9, sout31_10, sout31_11, sout31_12, sout31_13, sout31_14, sout31_15, sout31_16,
    sout31_17, sout31_18, sout31_19, sout31_20, sout31_21, sout31_22, sout31_23, sout31_24, 
    sout31_25, sout31_26, sout31_27, sout31_28, sout31_29, sout31_30, sout31_31, sout31_32,
    sout31_33, sout31_34, sout31_35, sout31_36, sout31_37, sout31_38, sout31_39, sout31_40,
    sout31_41, sout31_42, sout31_43, sout31_44, sout31_45, sout31_46, sout31_47, sout31_48,
    sout31_49, sout31_50, sout31_51, sout31_52, sout31_53, sout31_54, sout31_55, sout31_56, 
    sout31_57, sout31_58, sout31_59, sout31_60, sout31_61, sout31_62, sout31_63, sout31_64,
    
    sout32_1, sout32_2, sout32_3, sout32_4, sout32_5, sout32_6, sout32_7, sout32_8,
    sout32_9, sout32_10, sout32_11, sout32_12, sout32_13, sout32_14, sout32_15, sout32_16,
    sout32_17, sout32_18, sout32_19, sout32_20, sout32_21, sout32_22, sout32_23, sout32_24, 
    sout32_25, sout32_26, sout32_27, sout32_28, sout32_29, sout32_30, sout32_31, sout32_32,
    sout32_33, sout32_34, sout32_35, sout32_36, sout32_37, sout32_38, sout32_39, sout32_40,
    sout32_41, sout32_42, sout32_43, sout32_44, sout32_45, sout32_46, sout32_47, sout32_48,
    sout32_49, sout32_50, sout32_51, sout32_52, sout32_53, sout32_54, sout32_55, sout32_56, 
    sout32_57, sout32_58, sout32_59, sout32_60, sout32_61, sout32_62, sout32_63, sout32_64,
    
    sout33_1, sout33_2, sout33_3, sout33_4, sout33_5, sout33_6, sout33_7, sout33_8,
    sout33_9, sout33_10, sout33_11, sout33_12, sout33_13, sout33_14, sout33_15, sout33_16,
    sout33_17, sout33_18, sout33_19, sout33_20, sout33_21, sout33_22, sout33_23, sout33_24, 
    sout33_25, sout33_26, sout33_27, sout33_28, sout33_29, sout33_30, sout33_31, sout33_32,
    sout33_33, sout33_34, sout33_35, sout33_36, sout33_37, sout33_38, sout33_39, sout33_40,
    sout33_41, sout33_42, sout33_43, sout33_44, sout33_45, sout33_46, sout33_47, sout33_48,
    sout33_49, sout33_50, sout33_51, sout33_52, sout33_53, sout33_54, sout33_55, sout33_56, 
    sout33_57, sout33_58, sout33_59, sout33_60, sout33_61, sout33_62, sout33_63, sout33_64,
                    
    sout34_1, sout34_2, sout34_3, sout34_4, sout34_5, sout34_6, sout34_7, sout34_8,
    sout34_9, sout34_10, sout34_11, sout34_12, sout34_13, sout34_14, sout34_15, sout34_16,
    sout34_17, sout34_18, sout34_19, sout34_20, sout34_21, sout34_22, sout34_23, sout34_24, 
    sout34_25, sout34_26, sout34_27, sout34_28, sout34_29, sout34_30, sout34_31, sout34_32,
    sout34_33, sout34_34, sout34_35, sout34_36, sout34_37, sout34_38, sout34_39, sout34_40,
    sout34_41, sout34_42, sout34_43, sout34_44, sout34_45, sout34_46, sout34_47, sout34_48,
    sout34_49, sout34_50, sout34_51, sout34_52, sout34_53, sout34_54, sout34_55, sout34_56, 
    sout34_57, sout34_58, sout34_59, sout34_60, sout34_61, sout34_62, sout34_63, sout34_64,
                  
    sout35_1, sout35_2, sout35_3, sout35_4, sout35_5, sout35_6, sout35_7, sout35_8,
    sout35_9, sout35_10, sout35_11, sout35_12, sout35_13, sout35_14, sout35_15, sout35_16,
    sout35_17, sout35_18, sout35_19, sout35_20, sout35_21, sout35_22, sout35_23, sout35_24, 
    sout35_25, sout35_26, sout35_27, sout35_28, sout35_29, sout35_30, sout35_31, sout35_32,
    sout35_33, sout35_34, sout35_35, sout35_36, sout35_37, sout35_38, sout35_39, sout35_40,
    sout35_41, sout35_42, sout35_43, sout35_44, sout35_45, sout35_46, sout35_47, sout35_48,
    sout35_49, sout35_50, sout35_51, sout35_52, sout35_53, sout35_54, sout35_55, sout35_56, 
    sout35_57, sout35_58, sout35_59, sout35_60, sout35_61, sout35_62, sout35_63, sout35_64,
                  
    sout36_1, sout36_2, sout36_3, sout36_4, sout36_5, sout36_6, sout36_7, sout36_8,
    sout36_9, sout36_10, sout36_11, sout36_12, sout36_13, sout36_14, sout36_15, sout36_16,
    sout36_17, sout36_18, sout36_19, sout36_20, sout36_21, sout36_22, sout36_23, sout36_24, 
    sout36_25, sout36_26, sout36_27, sout36_28, sout36_29, sout36_30, sout36_31, sout36_32,
    sout36_33, sout36_34, sout36_35, sout36_36, sout36_37, sout36_38, sout36_39, sout36_40,
    sout36_41, sout36_42, sout36_43, sout36_44, sout36_45, sout36_46, sout36_47, sout36_48,
    sout36_49, sout36_50, sout36_51, sout36_52, sout36_53, sout36_54, sout36_55, sout36_56, 
    sout36_57, sout36_58, sout36_59, sout36_60, sout36_61, sout36_62, sout36_63, sout36_64,
                  
    sout37_1, sout37_2, sout37_3, sout37_4, sout37_5, sout37_6, sout37_7, sout37_8,
    sout37_9, sout37_10, sout37_11, sout37_12, sout37_13, sout37_14, sout37_15, sout37_16,
    sout37_17, sout37_18, sout37_19, sout37_20, sout37_21, sout37_22, sout37_23, sout37_24, 
    sout37_25, sout37_26, sout37_27, sout37_28, sout37_29, sout37_30, sout37_31, sout37_32,
    sout37_33, sout37_34, sout37_35, sout37_36, sout37_37, sout37_38, sout37_39, sout37_40,
    sout37_41, sout37_42, sout37_43, sout37_44, sout37_45, sout37_46, sout37_47, sout37_48,
    sout37_49, sout37_50, sout37_51, sout37_52, sout37_53, sout37_54, sout37_55, sout37_56, 
    sout37_57, sout37_58, sout37_59, sout37_60, sout37_61, sout37_62, sout37_63, sout37_64,
                  
    sout38_1, sout38_2, sout38_3, sout38_4, sout38_5, sout38_6, sout38_7, sout38_8,
    sout38_9, sout38_10, sout38_11, sout38_12, sout38_13, sout38_14, sout38_15, sout38_16,
    sout38_17, sout38_18, sout38_19, sout38_20, sout38_21, sout38_22, sout38_23, sout38_24, 
    sout38_25, sout38_26, sout38_27, sout38_28, sout38_29, sout38_30, sout38_31, sout38_32,
    sout38_33, sout38_34, sout38_35, sout38_36, sout38_37, sout38_38, sout38_39, sout38_40,
    sout38_41, sout38_42, sout38_43, sout38_44, sout38_45, sout38_46, sout38_47, sout38_48,
    sout38_49, sout38_50, sout38_51, sout38_52, sout38_53, sout38_54, sout38_55, sout38_56, 
    sout38_57, sout38_58, sout38_59, sout38_60, sout38_61, sout38_62, sout38_63, sout38_64,
                  
    sout39_1, sout39_2, sout39_3, sout39_4, sout39_5, sout39_6, sout39_7, sout39_8,
    sout39_9, sout39_10, sout39_11, sout39_12, sout39_13, sout39_14, sout39_15, sout39_16,
    sout39_17, sout39_18, sout39_19, sout39_20, sout39_21, sout39_22, sout39_23, sout39_24, 
    sout39_25, sout39_26, sout39_27, sout39_28, sout39_29, sout39_30, sout39_31, sout39_32,
    sout39_33, sout39_34, sout39_35, sout39_36, sout39_37, sout39_38, sout39_39, sout39_40,
    sout39_41, sout39_42, sout39_43, sout39_44, sout39_45, sout39_46, sout39_47, sout39_48,
    sout39_49, sout39_50, sout39_51, sout39_52, sout39_53, sout39_54, sout39_55, sout39_56, 
    sout39_57, sout39_58, sout39_59, sout39_60, sout39_61, sout39_62, sout39_63, sout39_64,
                  
    sout40_1, sout40_2, sout40_3, sout40_4, sout40_5, sout40_6, sout40_7, sout40_8,
    sout40_9, sout40_10, sout40_11, sout40_12, sout40_13, sout40_14, sout40_15, sout40_16,
    sout40_17, sout40_18, sout40_19, sout40_20, sout40_21, sout40_22, sout40_23, sout40_24, 
    sout40_25, sout40_26, sout40_27, sout40_28, sout40_29, sout40_30, sout40_31, sout40_32,
    sout40_33, sout40_34, sout40_35, sout40_36, sout40_37, sout40_38, sout40_39, sout40_40,
    sout40_41, sout40_42, sout40_43, sout40_44, sout40_45, sout40_46, sout40_47, sout40_48,
    sout40_49, sout40_50, sout40_51, sout40_52, sout40_53, sout40_54, sout40_55, sout40_56, 
    sout40_57, sout40_58, sout40_59, sout40_60, sout40_61, sout40_62, sout40_63, sout40_64,
    
    sout41_1, sout41_2, sout41_3, sout41_4, sout41_5, sout41_6, sout41_7, sout41_8,
    sout41_9, sout41_10, sout41_11, sout41_12, sout41_13, sout41_14, sout41_15, sout41_16,
    sout41_17, sout41_18, sout41_19, sout41_20, sout41_21, sout41_22, sout41_23, sout41_24, 
    sout41_25, sout41_26, sout41_27, sout41_28, sout41_29, sout41_30, sout41_31, sout41_32,
    sout41_33, sout41_34, sout41_35, sout41_36, sout41_37, sout41_38, sout41_39, sout41_40,
    sout41_41, sout41_42, sout41_43, sout41_44, sout41_45, sout41_46, sout41_47, sout41_48,
    sout41_49, sout41_50, sout41_51, sout41_52, sout41_53, sout41_54, sout41_55, sout41_56, 
    sout41_57, sout41_58, sout41_59, sout41_60, sout41_61, sout41_62, sout41_63, sout41_64,
                  
    sout42_1, sout42_2, sout42_3, sout42_4, sout42_5, sout42_6, sout42_7, sout42_8,
    sout42_9, sout42_10, sout42_11, sout42_12, sout42_13, sout42_14, sout42_15, sout42_16,
    sout42_17, sout42_18, sout42_19, sout42_20, sout42_21, sout42_22, sout42_23, sout42_24, 
    sout42_25, sout42_26, sout42_27, sout42_28, sout42_29, sout42_30, sout42_31, sout42_32,
    sout42_33, sout42_34, sout42_35, sout42_36, sout42_37, sout42_38, sout42_39, sout42_40,
    sout42_41, sout42_42, sout42_43, sout42_44, sout42_45, sout42_46, sout42_47, sout42_48,
    sout42_49, sout42_50, sout42_51, sout42_52, sout42_53, sout42_54, sout42_55, sout42_56, 
    sout42_57, sout42_58, sout42_59, sout42_60, sout42_61, sout42_62, sout42_63, sout42_64,
                        
    sout43_1, sout43_2, sout43_3, sout43_4, sout43_5, sout43_6, sout43_7, sout43_8,
    sout43_9, sout43_10, sout43_11, sout43_12, sout43_13, sout43_14, sout43_15, sout43_16,
    sout43_17, sout43_18, sout43_19, sout43_20, sout43_21, sout43_22, sout43_23, sout43_24, 
    sout43_25, sout43_26, sout43_27, sout43_28, sout43_29, sout43_30, sout43_31, sout43_32,
    sout43_33, sout43_34, sout43_35, sout43_36, sout43_37, sout43_38, sout43_39, sout43_40,
    sout43_41, sout43_42, sout43_43, sout43_44, sout43_45, sout43_46, sout43_47, sout43_48,
    sout43_49, sout43_50, sout43_51, sout43_52, sout43_53, sout43_54, sout43_55, sout43_56, 
    sout43_57, sout43_58, sout43_59, sout43_60, sout43_61, sout43_62, sout43_63, sout43_64,
                  
    sout44_1, sout44_2, sout44_3, sout44_4, sout44_5, sout44_6, sout44_7, sout44_8,
    sout44_9, sout44_10, sout44_11, sout44_12, sout44_13, sout44_14, sout44_15, sout44_16,
    sout44_17, sout44_18, sout44_19, sout44_20, sout44_21, sout44_22, sout44_23, sout44_24, 
    sout44_25, sout44_26, sout44_27, sout44_28, sout44_29, sout44_30, sout44_31, sout44_32,
    sout44_33, sout44_34, sout44_35, sout44_36, sout44_37, sout44_38, sout44_39, sout44_40,
    sout44_41, sout44_42, sout44_43, sout44_44, sout44_45, sout44_46, sout44_47, sout44_48,
    sout44_49, sout44_50, sout44_51, sout44_52, sout44_53, sout44_54, sout44_55, sout44_56, 
    sout44_57, sout44_58, sout44_59, sout44_60, sout44_61, sout44_62, sout44_63, sout44_64,
                  
    sout45_1, sout45_2, sout45_3, sout45_4, sout45_5, sout45_6, sout45_7, sout45_8,
    sout45_9, sout45_10, sout45_11, sout45_12, sout45_13, sout45_14, sout45_15, sout45_16,
    sout45_17, sout45_18, sout45_19, sout45_20, sout45_21, sout45_22, sout45_23, sout45_24, 
    sout45_25, sout45_26, sout45_27, sout45_28, sout45_29, sout45_30, sout45_31, sout45_32,
    sout45_33, sout45_34, sout45_35, sout45_36, sout45_37, sout45_38, sout45_39, sout45_40,
    sout45_41, sout45_42, sout45_43, sout45_44, sout45_45, sout45_46, sout45_47, sout45_48,
    sout45_49, sout45_50, sout45_51, sout45_52, sout45_53, sout45_54, sout45_55, sout45_56, 
    sout45_57, sout45_58, sout45_59, sout45_60, sout45_61, sout45_62, sout45_63, sout45_64,
                  
    sout46_1, sout46_2, sout46_3, sout46_4, sout46_5, sout46_6, sout46_7, sout46_8,
    sout46_9, sout46_10, sout46_11, sout46_12, sout46_13, sout46_14, sout46_15, sout46_16,
    sout46_17, sout46_18, sout46_19, sout46_20, sout46_21, sout46_22, sout46_23, sout46_24, 
    sout46_25, sout46_26, sout46_27, sout46_28, sout46_29, sout46_30, sout46_31, sout46_32,
    sout46_33, sout46_34, sout46_35, sout46_36, sout46_37, sout46_38, sout46_39, sout46_40,
    sout46_41, sout46_42, sout46_43, sout46_44, sout46_45, sout46_46, sout46_47, sout46_48,
    sout46_49, sout46_50, sout46_51, sout46_52, sout46_53, sout46_54, sout46_55, sout46_56, 
    sout46_57, sout46_58, sout46_59, sout46_60, sout46_61, sout46_62, sout46_63, sout46_64,
                 
    sout47_1, sout47_2, sout47_3, sout47_4, sout47_5, sout47_6, sout47_7, sout47_8,
    sout47_9, sout47_10, sout47_11, sout47_12, sout47_13, sout47_14, sout47_15, sout47_16,
    sout47_17, sout47_18, sout47_19, sout47_20, sout47_21, sout47_22, sout47_23, sout47_24, 
    sout47_25, sout47_26, sout47_27, sout47_28, sout47_29, sout47_30, sout47_31, sout47_32,
    sout47_33, sout47_34, sout47_35, sout47_36, sout47_37, sout47_38, sout47_39, sout47_40,
    sout47_41, sout47_42, sout47_43, sout47_44, sout47_45, sout47_46, sout47_47, sout47_48,
    sout47_49, sout47_50, sout47_51, sout47_52, sout47_53, sout47_54, sout47_55, sout47_56, 
    sout47_57, sout47_58, sout47_59, sout47_60, sout47_61, sout47_62, sout47_63, sout47_64,
                  
    sout48_1, sout48_2, sout48_3, sout48_4, sout48_5, sout48_6, sout48_7, sout48_8,
    sout48_9, sout48_10, sout48_11, sout48_12, sout48_13, sout48_14, sout48_15, sout48_16,
    sout48_17, sout48_18, sout48_19, sout48_20, sout48_21, sout48_22, sout48_23, sout48_24, 
    sout48_25, sout48_26, sout48_27, sout48_28, sout48_29, sout48_30, sout48_31, sout48_32,
    sout48_33, sout48_34, sout48_35, sout48_36, sout48_37, sout48_38, sout48_39, sout48_40,
    sout48_41, sout48_42, sout48_43, sout48_44, sout48_45, sout48_46, sout48_47, sout48_48,
    sout48_49, sout48_50, sout48_51, sout48_52, sout48_53, sout48_54, sout48_55, sout48_56, 
    sout48_57, sout48_58, sout48_59, sout48_60, sout48_61, sout48_62, sout48_63, sout48_64,
                  
    sout49_1, sout49_2, sout49_3, sout49_4, sout49_5, sout49_6, sout49_7, sout49_8,
    sout49_9, sout49_10, sout49_11, sout49_12, sout49_13, sout49_14, sout49_15, sout49_16,
    sout49_17, sout49_18, sout49_19, sout49_20, sout49_21, sout49_22, sout49_23, sout49_24, 
    sout49_25, sout49_26, sout49_27, sout49_28, sout49_29, sout49_30, sout49_31, sout49_32,
    sout49_33, sout49_34, sout49_35, sout49_36, sout49_37, sout49_38, sout49_39, sout49_40,
    sout49_41, sout49_42, sout49_43, sout49_44, sout49_45, sout49_46, sout49_47, sout49_48,
    sout49_49, sout49_50, sout49_51, sout49_52, sout49_53, sout49_54, sout49_55, sout49_56, 
    sout49_57, sout49_58, sout49_59, sout49_60, sout49_61, sout49_62, sout49_63, sout49_64,
                  
    sout50_1, sout50_2, sout50_3, sout50_4, sout50_5, sout50_6, sout50_7, sout50_8,
    sout50_9, sout50_10, sout50_11, sout50_12, sout50_13, sout50_14, sout50_15, sout50_16,
    sout50_17, sout50_18, sout50_19, sout50_20, sout50_21, sout50_22, sout50_23, sout50_24, 
    sout50_25, sout50_26, sout50_27, sout50_28, sout50_29, sout50_30, sout50_31, sout50_32,
    sout50_33, sout50_34, sout50_35, sout50_36, sout50_37, sout50_38, sout50_39, sout50_40,
    sout50_41, sout50_42, sout50_43, sout50_44, sout50_45, sout50_46, sout50_47, sout50_48,
    sout50_49, sout50_50, sout50_51, sout50_52, sout50_53, sout50_54, sout50_55, sout50_56, 
    sout50_57, sout50_58, sout50_59, sout50_60, sout50_61, sout50_62, sout50_63, sout50_64,
    
    sout51_1, sout51_2, sout51_3, sout51_4, sout51_5, sout51_6, sout51_7, sout51_8,
    sout51_9, sout51_10, sout51_11, sout51_12, sout51_13, sout51_14, sout51_15, sout51_16,
    sout51_17, sout51_18, sout51_19, sout51_20, sout51_21, sout51_22, sout51_23, sout51_24, 
    sout51_25, sout51_26, sout51_27, sout51_28, sout51_29, sout51_30, sout51_31, sout51_32,
    sout51_33, sout51_34, sout51_35, sout51_36, sout51_37, sout51_38, sout51_39, sout51_40,
    sout51_41, sout51_42, sout51_43, sout51_44, sout51_45, sout51_46, sout51_47, sout51_48,
    sout51_49, sout51_50, sout51_51, sout51_52, sout51_53, sout51_54, sout51_55, sout51_56, 
    sout51_57, sout51_58, sout51_59, sout51_60, sout51_61, sout51_62, sout51_63, sout51_64,
                              
    sout52_1, sout52_2, sout52_3, sout52_4, sout52_5, sout52_6, sout52_7, sout52_8,
    sout52_9, sout52_10, sout52_11, sout52_12, sout52_13, sout52_14, sout52_15, sout52_16,
    sout52_17, sout52_18, sout52_19, sout52_20, sout52_21, sout52_22, sout52_23, sout52_24, 
    sout52_25, sout52_26, sout52_27, sout52_28, sout52_29, sout52_30, sout52_31, sout52_32,
    sout52_33, sout52_34, sout52_35, sout52_36, sout52_37, sout52_38, sout52_39, sout52_40,
    sout52_41, sout52_42, sout52_43, sout52_44, sout52_45, sout52_46, sout52_47, sout52_48,
    sout52_49, sout52_50, sout52_51, sout52_52, sout52_53, sout52_54, sout52_55, sout52_56, 
    sout52_57, sout52_58, sout52_59, sout52_60, sout52_61, sout52_62, sout52_63, sout52_64,
                  
    sout53_1, sout53_2, sout53_3, sout53_4, sout53_5, sout53_6, sout53_7, sout53_8,
    sout53_9, sout53_10, sout53_11, sout53_12, sout53_13, sout53_14, sout53_15, sout53_16,
    sout53_17, sout53_18, sout53_19, sout53_20, sout53_21, sout53_22, sout53_23, sout53_24, 
    sout53_25, sout53_26, sout53_27, sout53_28, sout53_29, sout53_30, sout53_31, sout53_32,
    sout53_33, sout53_34, sout53_35, sout53_36, sout53_37, sout53_38, sout53_39, sout53_40,
    sout53_41, sout53_42, sout53_43, sout53_44, sout53_45, sout53_46, sout53_47, sout53_48,
    sout53_49, sout53_50, sout53_51, sout53_52, sout53_53, sout53_54, sout53_55, sout53_56, 
    sout53_57, sout53_58, sout53_59, sout53_60, sout53_61, sout53_62, sout53_63, sout53_64,
                  
    sout54_1, sout54_2, sout54_3, sout54_4, sout54_5, sout54_6, sout54_7, sout54_8,
    sout54_9, sout54_10, sout54_11, sout54_12, sout54_13, sout54_14, sout54_15, sout54_16,
    sout54_17, sout54_18, sout54_19, sout54_20, sout54_21, sout54_22, sout54_23, sout54_24, 
    sout54_25, sout54_26, sout54_27, sout54_28, sout54_29, sout54_30, sout54_31, sout54_32,
    sout54_33, sout54_34, sout54_35, sout54_36, sout54_37, sout54_38, sout54_39, sout54_40,
    sout54_41, sout54_42, sout54_43, sout54_44, sout54_45, sout54_46, sout54_47, sout54_48,
    sout54_49, sout54_50, sout54_51, sout54_52, sout54_53, sout54_54, sout54_55, sout54_56, 
    sout54_57, sout54_58, sout54_59, sout54_60, sout54_61, sout54_62, sout54_63, sout54_64,
                  
    sout55_1, sout55_2, sout55_3, sout55_4, sout55_5, sout55_6, sout55_7, sout55_8,
    sout55_9, sout55_10, sout55_11, sout55_12, sout55_13, sout55_14, sout55_15, sout55_16,
    sout55_17, sout55_18, sout55_19, sout55_20, sout55_21, sout55_22, sout55_23, sout55_24, 
    sout55_25, sout55_26, sout55_27, sout55_28, sout55_29, sout55_30, sout55_31, sout55_32,
    sout55_33, sout55_34, sout55_35, sout55_36, sout55_37, sout55_38, sout55_39, sout55_40,
    sout55_41, sout55_42, sout55_43, sout55_44, sout55_45, sout55_46, sout55_47, sout55_48,
    sout55_49, sout55_50, sout55_51, sout55_52, sout55_53, sout55_54, sout55_55, sout55_56, 
    sout55_57, sout55_58, sout55_59, sout55_60, sout55_61, sout55_62, sout55_63, sout55_64,
                  
    sout56_1, sout56_2, sout56_3, sout56_4, sout56_5, sout56_6, sout56_7, sout56_8,
    sout56_9, sout56_10, sout56_11, sout56_12, sout56_13, sout56_14, sout56_15, sout56_16,
    sout56_17, sout56_18, sout56_19, sout56_20, sout56_21, sout56_22, sout56_23, sout56_24, 
    sout56_25, sout56_26, sout56_27, sout56_28, sout56_29, sout56_30, sout56_31, sout56_32,
    sout56_33, sout56_34, sout56_35, sout56_36, sout56_37, sout56_38, sout56_39, sout56_40,
    sout56_41, sout56_42, sout56_43, sout56_44, sout56_45, sout56_46, sout56_47, sout56_48,
    sout56_49, sout56_50, sout56_51, sout56_52, sout56_53, sout56_54, sout56_55, sout56_56, 
    sout56_57, sout56_58, sout56_59, sout56_60, sout56_61, sout56_62, sout56_63, sout56_64,
                  
    sout57_1, sout57_2, sout57_3, sout57_4, sout57_5, sout57_6, sout57_7, sout57_8,
    sout57_9, sout57_10, sout57_11, sout57_12, sout57_13, sout57_14, sout57_15, sout57_16,
    sout57_17, sout57_18, sout57_19, sout57_20, sout57_21, sout57_22, sout57_23, sout57_24, 
    sout57_25, sout57_26, sout57_27, sout57_28, sout57_29, sout57_30, sout57_31, sout57_32,
    sout57_33, sout57_34, sout57_35, sout57_36, sout57_37, sout57_38, sout57_39, sout57_40,
    sout57_41, sout57_42, sout57_43, sout57_44, sout57_45, sout57_46, sout57_47, sout57_48,
    sout57_49, sout57_50, sout57_51, sout57_52, sout57_53, sout57_54, sout57_55, sout57_56, 
    sout57_57, sout57_58, sout57_59, sout57_60, sout57_61, sout57_62, sout57_63, sout57_64,
                  
    sout58_1, sout58_2, sout58_3, sout58_4, sout58_5, sout58_6, sout58_7, sout58_8,
    sout58_9, sout58_10, sout58_11, sout58_12, sout58_13, sout58_14, sout58_15, sout58_16,
    sout58_17, sout58_18, sout58_19, sout58_20, sout58_21, sout58_22, sout58_23, sout58_24, 
    sout58_25, sout58_26, sout58_27, sout58_28, sout58_29, sout58_30, sout58_31, sout58_32,
    sout58_33, sout58_34, sout58_35, sout58_36, sout58_37, sout58_38, sout58_39, sout58_40,
    sout58_41, sout58_42, sout58_43, sout58_44, sout58_45, sout58_46, sout58_47, sout58_48,
    sout58_49, sout58_50, sout58_51, sout58_52, sout58_53, sout58_54, sout58_55, sout58_56, 
    sout58_57, sout58_58, sout58_59, sout58_60, sout58_61, sout58_62, sout58_63, sout58_64,
                  
    sout59_1, sout59_2, sout59_3, sout59_4, sout59_5, sout59_6, sout59_7, sout59_8,
    sout59_9, sout59_10, sout59_11, sout59_12, sout59_13, sout59_14, sout59_15, sout59_16,
    sout59_17, sout59_18, sout59_19, sout59_20, sout59_21, sout59_22, sout59_23, sout59_24, 
    sout59_25, sout59_26, sout59_27, sout59_28, sout59_29, sout59_30, sout59_31, sout59_32,
    sout59_33, sout59_34, sout59_35, sout59_36, sout59_37, sout59_38, sout59_39, sout59_40,
    sout59_41, sout59_42, sout59_43, sout59_44, sout59_45, sout59_46, sout59_47, sout59_48,
    sout59_49, sout59_50, sout59_51, sout59_52, sout59_53, sout59_54, sout59_55, sout59_56, 
    sout59_57, sout59_58, sout59_59, sout59_60, sout59_61, sout59_62, sout59_63, sout59_64,
                  
    sout60_1, sout60_2, sout60_3, sout60_4, sout60_5, sout60_6, sout60_7, sout60_8,
    sout60_9, sout60_10, sout60_11, sout60_12, sout60_13, sout60_14, sout60_15, sout60_16,
    sout60_17, sout60_18, sout60_19, sout60_20, sout60_21, sout60_22, sout60_23, sout60_24, 
    sout60_25, sout60_26, sout60_27, sout60_28, sout60_29, sout60_30, sout60_31, sout60_32,
    sout60_33, sout60_34, sout60_35, sout60_36, sout60_37, sout60_38, sout60_39, sout60_40,
    sout60_41, sout60_42, sout60_43, sout60_44, sout60_45, sout60_46, sout60_47, sout60_48,
    sout60_49, sout60_50, sout60_51, sout60_52, sout60_53, sout60_54, sout60_55, sout60_56, 
    sout60_57, sout60_58, sout60_59, sout60_60, sout60_61, sout60_62, sout60_63, sout60_64,
                  
    sout61_1, sout61_2, sout61_3, sout61_4, sout61_5, sout61_6, sout61_7, sout61_8,
    sout61_9, sout61_10, sout61_11, sout61_12, sout61_13, sout61_14, sout61_15, sout61_16,
    sout61_17, sout61_18, sout61_19, sout61_20, sout61_21, sout61_22, sout61_23, sout61_24, 
    sout61_25, sout61_26, sout61_27, sout61_28, sout61_29, sout61_30, sout61_31, sout61_32,
    sout61_33, sout61_34, sout61_35, sout61_36, sout61_37, sout61_38, sout61_39, sout61_40,
    sout61_41, sout61_42, sout61_43, sout61_44, sout61_45, sout61_46, sout61_47, sout61_48,
    sout61_49, sout61_50, sout61_51, sout61_52, sout61_53, sout61_54, sout61_55, sout61_56, 
    sout61_57, sout61_58, sout61_59, sout61_60, sout61_61, sout61_62, sout61_63, sout61_64,
                  
    sout62_1, sout62_2, sout62_3, sout62_4, sout62_5, sout62_6, sout62_7, sout62_8,
    sout62_9, sout62_10, sout62_11, sout62_12, sout62_13, sout62_14, sout62_15, sout62_16,
    sout62_17, sout62_18, sout62_19, sout62_20, sout62_21, sout62_22, sout62_23, sout62_24, 
    sout62_25, sout62_26, sout62_27, sout62_28, sout62_29, sout62_30, sout62_31, sout62_32,
    sout62_33, sout62_34, sout62_35, sout62_36, sout62_37, sout62_38, sout62_39, sout62_40,
    sout62_41, sout62_42, sout62_43, sout62_44, sout62_45, sout62_46, sout62_47, sout62_48,
    sout62_49, sout62_50, sout62_51, sout62_52, sout62_53, sout62_54, sout62_55, sout62_56, 
    sout62_57, sout62_58, sout62_59, sout62_60, sout62_61, sout62_62, sout62_63, sout62_64,
                  
    sout63_1, sout63_2, sout63_3, sout63_4, sout63_5, sout63_6, sout63_7, sout63_8,
    sout63_9, sout63_10, sout63_11, sout63_12, sout63_13, sout63_14, sout63_15, sout63_16,
    sout63_17, sout63_18, sout63_19, sout63_20, sout63_21, sout63_22, sout63_23, sout63_24, 
    sout63_25, sout63_26, sout63_27, sout63_28, sout63_29, sout63_30, sout63_31, sout63_32,
    sout63_33, sout63_34, sout63_35, sout63_36, sout63_37, sout63_38, sout63_39, sout63_40,
    sout63_41, sout63_42, sout63_43, sout63_44, sout63_45, sout63_46, sout63_47, sout63_48,
    sout63_49, sout63_50, sout63_51, sout63_52, sout63_53, sout63_54, sout63_55, sout63_56, 
    sout63_57, sout63_58, sout63_59, sout63_60, sout63_61, sout63_62, sout63_63, sout63_64,
                  
    sout64_1, sout64_2, sout64_3, sout64_4, sout64_5, sout64_6, sout64_7, sout64_8,
    sout64_9, sout64_10, sout64_11, sout64_12, sout64_13, sout64_14, sout64_15, sout64_16,
    sout64_17, sout64_18, sout64_19, sout64_20, sout64_21, sout64_22, sout64_23, sout64_24, 
    sout64_25, sout64_26, sout64_27, sout64_28, sout64_29, sout64_30, sout64_31, sout64_32,
    sout64_33, sout64_34, sout64_35, sout64_36, sout64_37, sout64_38, sout64_39, sout64_40,
    sout64_41, sout64_42, sout64_43, sout64_44, sout64_45, sout64_46, sout64_47, sout64_48,
    sout64_49, sout64_50, sout64_51, sout64_52, sout64_53, sout64_54, sout64_55, sout64_56, 
    sout64_57, sout64_58, sout64_59, sout64_60, sout64_61, sout64_62, sout64_63, sout64_64    
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
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
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
        // ain49_1 = 1,  ain49_2 = 2,
        // ain50_1 = 3,  ain50_2 = 4,
        // ain51_1 = 5,  ain51_2 = 6,
        // ain52_1 = 7,  ain52_2 = 8,
        // ain53_1 = 9,  ain53_2 = 10,
        // ain54_1 = 11, ain54_2 = 12,
        // ain55_1 = 13, ain55_2 = 14,
        // ain56_1 = 15, ain56_2 = 16,
        // ain57_1 = 1,  ain57_2 = 2,
        // ain58_1 = 3,  ain58_2 = 4,
        // ain59_1 = 5,  ain59_2 = 6,
        // ain60_1 = 7,  ain60_2 = 8,
        // ain61_1 = 9,  ain61_2 = 10,
        // ain62_1 = 11, ain62_2 = 12,
        // ain63_1 = 13, ain63_2 = 14,
        // ain64_1 = 15, ain64_2 = 16 }
        
        
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
        
        // win1_49 = 1, win1_50 = 2,  win1_51 = 3,  win1_52 = 4,  win1_53 = 5,  win1_54 = 6,  win2_55 = 7,  win1_56 = 8,
        // win2_49 = 9, win2_50 = 10, win2_51 = 11, win2_52 = 12, win2_53 = 13, win2_54 = 14, win2_55 = 15, win2_56 = 16,
        
        // win1_57 = 1, win1_58 = 2,  win1_59 = 3,  win1_60 = 4,  win1_61 = 5,  win1_62 = 6,  win2_63 = 7,  win1_64 = 8,
        // win2_57 = 9, win2_58 = 10, win2_59 = 11, win2_60 = 12, win2_61 = 13, win2_62 = 14, win2_63 = 15, win2_64 = 16 }
        
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
        
        //ain12 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //win21 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        
        win1 = 9; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
         
        #20
        
        //ain11 ain22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //win11 win22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 1; ain2 = 4; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 1; win2 = 10; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 ain21 ain32 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 win12 win23 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 3; ain3 = 6; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 2; win3 = 11; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        
        #20
        
        //0 0 ain31 ain42 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 win13 win24 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 5; ain4 = 8; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 3; win4 = 12; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 ain41 ain52 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 win14 win25 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 7; ain5 = 10; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 4; win5 = 13; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 ain51 ain62 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 win15 ain26 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 9; ain6 = 12; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 5; win6 = 14; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 ain61 ain72 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 win16 win27 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 11; ain7 = 14; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 6; win7 = 15; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 ain71 ain82    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 win17 win28    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 13; ain8 = 16;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 7; win8 = 16;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 ain81    ain92 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 win18    win29 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 15;
        ain9 = 2; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 8;
        win9 = 9; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    ain91 ain10_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    win19 win2_10 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 1; ain10 = 4; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 1; win10 = 10; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        
        #20
        
        //0 0 0 0 0 0 0 0    0 ain10_1 ain11_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 win1_10 win2_11 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 3; ain11 = 6; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 2; win11 = 11; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 ain11_1 ain12_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 win1_11 win2_12 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 5; ain12 = 8; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 3; win12 = 12; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 ain12_1 ain13_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 win1_12 win2_13 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 7; ain13 = 10; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 4; win13 = 13; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 ain13_1 ain14_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 win1_13 win2_14 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 9; ain14 = 12; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 5; win14 = 14; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 ain14_1 ain15_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 win1_14 win2_15 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 11; ain15 = 14; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 6; win15 = 15; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain15_1 ain16_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_15 win2_16    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 13; ain16 = 16;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 7; win16 = 16;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
           
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain16_1    ain17_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_16    win2_17 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 15;
        ain17 = 2; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 8;
        win17 = 9; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain17_1 ain18_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_17 win2_18 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 1; ain18 = 4; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 1; win18 = 10; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain18_1 ain19_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_18 win2_19 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 3; ain19 = 6; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 2; win19 = 11; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain19_1 ain20_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_19 win2_20 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 5; ain20 = 8; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 3; win20 = 12; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain20_1 ain21_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_20 win2_21 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 7; ain21 = 10; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 4; win21 = 13; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain21_1 ain22_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_21 win2_22 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 9; ain22 = 12; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 5; win22 = 14; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain22_1 ain23_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_22 win2_23 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 11; ain23 = 14; ain24 = 0;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 6; win23 = 15; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain23_1 ain24_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_23 win2_24    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 13; ain24 = 16;
        ain25 = 0; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 7; win24 = 16;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain24_1    ain25_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_24    win2_25 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 15;
        ain25 = 2; ain26 = 0; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 8;
        win25 = 9; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain25_1 ain26_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_25 win2_26 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 1; ain26 = 4; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 1; win26 = 10; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain26_1 ain27_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_26 win2_27 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 3; ain27 = 6; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 2; win27 = 11; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain27_1 ain28_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_27 win2_28 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 5; ain28 = 8; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 3; win28 = 12; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain28_1 ain29_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_28 win2_29 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 7; ain29 = 10; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 4; win29 = 13; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
            
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain29_1 ain30_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_29 win2_30 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 9; ain30 = 12; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 5; win30 = 14; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain30_1 ain31_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_30 ain2_31 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 11; ain31 = 14; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 6; win31 = 15; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain31_2 ain32_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain1_31 win2_32    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 13; ain32 = 16;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 7; win32 = 16;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain32_1    ain33_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_32    win2_33 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 15;
        ain33 = 2; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 8;
        win33 = 9; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain33_1 ain34_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_33 win2_34 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 1; ain34 = 4; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 1; win34 = 10; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain34_1 ain35_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_34 win2_35 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 3; ain35 = 6; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 2; win35 = 11; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain35_1 ain36_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_35 win2_36 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 5; ain36 = 8; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 3; win36 = 12; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain36_1 ain37_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_36 win2_27 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 7; ain37 = 10; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 4; win37 = 13; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain37_1 ain38_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_27 win2_38 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 9; ain38 = 12; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 5; win38 = 14; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain38_1 ain39_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_38 win2_39 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 11; ain39 = 14; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 6; win39 = 15; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain39_1 ain40_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_39 win2_40    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 13; ain40 = 16;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 7; win40 = 16;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain40_1    ain41_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_40    win2_41 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 15;
        ain41 = 2; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 8;
        win41 = 9; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain41_1 ain42_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_41 win2_42 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 1; ain42 = 4; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 1; win42 = 10; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain42_1 ain43_2 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_42 win2_43 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 3; ain43 = 6; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 2; win43 = 11; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain43_1 ain44_2 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_43 win2_44 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 5; ain44 = 8; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 3; win44 = 12; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain44_1 ain45_2 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_44 win2_45 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 7; ain45 = 10; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 4; win45 = 13; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain45_1 ain46_2 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_45 win2_46 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 9; ain46 = 12; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 5; win46 = 14; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain46_1 ain47_2 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_46 win2_47 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 11; ain47 = 14; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 6; win47 = 15; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain47_1 ain48_2    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_47 win2_48    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 13; ain48 = 16;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 7; win48 = 16;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain48_1    ain49_2 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_48    win2_49 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 15;
        ain49 = 2; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 8;
        win49 = 9; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain49_1 ain50_2 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_49 win2_50 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 1; ain50 = 4; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 1; win50 = 10; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain50_1 ain51_2 0 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_50 win2_51 0 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 3; ain51 = 6; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 2; win51 = 11; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain51_1 ain52_2 0 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_51 win2_52 0 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 5; ain52 = 8; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 3; win52 = 12; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain52_1 ain53_2 0 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_52 win2_53 0 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 7; ain53 = 10; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 4; win53 = 13; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain53_1 ain54_2 0 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_53 win2_54 0 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 9; ain54 = 12; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 5; win54 = 14; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain54_1 ain55_2 0    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_54 win2_55 0    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 11; ain55 = 14; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 6; win55 = 15; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain55_1 ain56_2    0 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_55 win2_56    0 0 0 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 13; ain56 = 16;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 7; win56 = 16;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain56_1    ain57_2 0 0 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_56    win2_57 0 0 0 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 15;
        ain57 = 2; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 8;
        win57 = 9; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    ain57_1 ain58_2 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    win1_57 win2_58 0 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 1; ain58 = 4; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 1; win58 = 10; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 ain58_1 ain59_2 0 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 win1_58 win2_59 0 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 3; ain59 = 6; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 2; win59 = 11; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 ain59_1 ain60_2 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 win1_59 win2_60 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 5; ain60 = 8; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 3; win60 = 12; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 ain60_1 ain61_2 0 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 win1_60 win2_61 0 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 7; ain61 = 10; ain62 = 0; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 4; win61 = 13; win62 = 0; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 ain61_1 ain62_2 0 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 win1_61 win2_62 0 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 9; ain62 = 12; ain63 = 0; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 5; win62 = 14; win63 = 0; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 ain62_1 ain63_2 0
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 win1_62 win2_63 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 11; ain63 = 14; ain64 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 6; win63 = 15; win64 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain63_1 ain64_2
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_63 win2_64
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 13; ain64 = 16;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 7; win64 = 16;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain64_1
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_64
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 15;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 8;
        
        #20
        
        //reset to 0
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        ain17 = 0; ain18 = 0; ain19 = 0; ain20 = 0; ain21 = 0; ain22 = 0; ain23 = 0; ain24 = 0;
        ain25 = 0; ain26 = 0 ; ain27 = 0; ain28 = 0; ain29 = 0; ain30 = 0; ain31 = 0; ain32 = 0;
        ain33 = 0; ain34 = 0; ain35 = 0; ain36 = 0; ain37 = 0; ain38 = 0; ain39 = 0; ain40 = 0;
        ain41 = 0; ain42 = 0; ain43 = 0; ain44 = 0; ain45 = 0; ain46 = 0; ain47 = 0; ain48 = 0;
        ain49 = 0; ain50 = 0; ain51 = 0; ain52 = 0; ain53 = 0; ain54 = 0; ain55 = 0; ain56 = 0;
        ain57 = 0; ain58 = 0; ain59 = 0; ain60 = 0; ain61 = 0; ain62 = 0; ain63 = 0; ain64 = 0;

        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        win17 = 0; win18 = 0; win19 = 0; win20 = 0; win21 = 0; win22 = 0; win23 = 0; win24 = 0;
        win25 = 0; win26 = 0; win27 = 0; win28 = 0; win29 = 0; win30 = 0; win31 = 0; win32 = 0;
        win33 = 0; win34 = 0; win35 = 0; win36 = 0; win37 = 0; win38 = 0; win39 = 0; win40 = 0;
        win41 = 0; win42 = 0; win43 = 0; win44 = 0; win45 = 0; win46 = 0; win47 = 0; win48 = 0;
        win49 = 0; win50 = 0; win51 = 0; win52 = 0; win53 = 0; win54 = 0; win55 = 0; win56 = 0;
        win57 = 0; win58 = 0; win59 = 0; win60 = 0; win61 = 0; win62 = 0; win63 = 0; win64 = 0;
        
        #1500
        
        //outputs
        //{sout11 = 19, sout12 = 22, sout13 = 25, sout14 = 28, sout15 = 31, sout16 = 34, sout17 = 37, sout18 = 40,
        // sout21 = 39, sout22 = 46, sout23 = 53, sout24 = 60, sout25 = 67, sout16 = 74, sout17 = 81, sout18 = 88, 
        // sout31 = 59, sout32 = 70, sout33 = 81, sout34 = 92, sout35 = 103, sout16 = 114, sout17 = 120, sout18 = 136,
        // sout41 = 79, sout42 = 94, sout43 = 109, sout44 = 124, sout45 = 139, sout16 = 154, sout17 = 169, sout18 = 184,
        // sout51 = 99, sout52 = 118, sout43 = 137, sout44 = 156, sout55 = 175, sout16 = 194, sout17 = 213, sout18 = 232,
        // sout61 = 119, sout62 = 142, sout43 = 165, sout44 = 188, sout65 = 211, sout16 = 234, sout17 = 257, sout18 = 280,
        // sout71 = 139, sout72 = 166, sout43 = 193, sout44 = 220, sout75 = 247, sout16 = 274, sout17 = 301, sout18 = 328,
        // sout81 = 159, sout82 = 190, sout43 = 221, sout44 = 252, sout85 = 283, sout16 = 314, sout17 = 345, sout18 = 376}
        
        $finish;
    end
        
endmodule
        
endmodule
