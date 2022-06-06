`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 09:00:07 PM
// Design Name: 
// Module Name: mac_array_16x16_tb
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


module mac_array_16x16_tb(
    );
    
    //inputs
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8,
              ain9, ain10, ain11, ain12, ain13, ain14, ain15, ain16;
              
    reg [7:0] win1, win2, win3, win4, win5, win6, win7, win8,
              win9, win10, win11, win12, win13, win14, win15, win16; 
              
    //outputs       
    wire [19:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18,
                sout19, sout1_10, sout1_11, sout1_12, sout1_13, sout1_14, sout1_15, sout1_16;
                
    wire [19:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28,
                sout29, sout2_10, sout2_11, sout2_12, sout2_13, sout2_14, sout2_15, sout2_16;
                
    wire [19:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38,
                sout39, sout3_10, sout3_11, sout3_12, sout3_13, sout3_14, sout3_15, sout3_16;  
                
    wire [19:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48,
                sout49, sout4_10, sout4_11, sout4_12, sout4_13, sout4_14, sout4_15, sout4_16;
                
    wire [19:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58,
                sout59, sout5_10, sout5_11, sout5_12, sout5_13, sout5_14, sout5_15, sout5_16;  
                
    wire [19:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68,
                sout69, sout6_10, sout6_11, sout6_12, sout6_13, sout6_14, sout6_15, sout6_16;
                
    wire [19:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78,
                sout79, sout7_10, sout7_11, sout7_12, sout7_13, sout7_14, sout7_15, sout7_16;
                
    wire [19:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88,
                sout89, sout8_10, sout8_11, sout8_12, sout8_13, sout8_14, sout8_15, sout8_16;
                
    wire [19:0] sout91, sout92, sout93, sout94, sout95, sout96, sout97, sout98,
                sout99, sout9_10, sout9_11, sout9_12, sout9_13, sout9_14, sout9_15, sout9_16;
                
    wire [19:0] sout10_1, sout10_2, sout10_3, sout10_4, sout10_5, sout10_6, sout10_7, sout10_8,
                sout10_9, sout10_10, sout10_11, sout10_12, sout10_13, sout10_14, sout10_15, sout10_16;
                
    wire [19:0] sout11_1, sout11_2, sout11_3, sout11_4, sout11_5, sout11_6, sout11_7, sout11_8,
                sout11_9, sout11_10, sout11_11, sout11_12, sout11_13, sout11_14, sout11_15, sout11_16;
               
    wire [19:0] sout12_1, sout12_2, sout12_3, sout12_4, sout12_5, sout12_6, sout12_7, sout12_8,
                sout12_9, sout12_10, sout12_11, sout12_12, sout12_13, sout12_14, sout12_15, sout12_16;
                
    wire [19:0] sout13_1, sout13_2, sout13_3, sout13_4, sout13_5, sout13_6, sout13_7, sout13_8,
                sout13_9, sout13_10, sout13_11, sout13_12, sout13_13, sout13_14, sout13_15, sout13_16;
                
    wire [19:0] sout14_1, sout14_2, sout14_3, sout14_4, sout14_5, sout14_6, sout14_7, sout14_8,
                sout14_9, sout14_10, sout14_11, sout14_12, sout14_13, sout14_14, sout14_15, sout14_16;
                
    wire [19:0] sout15_1, sout15_2, sout15_3, sout15_4, sout15_5, sout15_6, sout15_7, sout15_8,
                sout15_9, sout15_10, sout15_11, sout15_12, sout15_13, sout15_14, sout15_15, sout15_16;
                
    wire [19:0] sout16_1, sout16_2, sout16_3, sout16_4, sout16_5, sout16_6, sout16_7, sout16_8,
                sout16_9, sout16_10, sout16_11, sout16_12, sout16_13, sout16_14, sout16_15, sout16_16;
                
    mac_array_16x16 DUT( clk, rst,
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
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        rst = 0;
        
        //inputs
        
        //A[] = 16x2
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
        
        //W[] = 2x16
        //{win11 = 1, win12 = 2,  win13 = 3,  win14 = 4,  win15 = 5,  win16 = 6,  win17 = 7,  win18 = 8,
        // win21 = 9, win22 = 10, win23 = 11, win24 = 12, win25 = 13, win26 = 14, win27 = 15, win28 = 16,
        
        // win19 = 1, win1_10 = 2,  win1_11 = 3,  win1_12 = 4,  win1_13 = 5,  win1_14 = 6,  win1_15 = 7,  win1_16 = 8,
        // win29 = 9, win2_10 = 10, win2_11 = 11, win2_12 = 12, win2_13 = 13, win2_14 = 14, win2_15 = 15, win2_16 = 16 }
        
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
           
        //ain12 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //win21 0 0 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 9; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
             
        #20
             
        //ain11 ain22 0 0 0 0 0 0   0 0 0 0 0 0 0 0   
        //win11 win22 0 0 0 0 0 0   0 0 0 0 0 0 0 0    
        ain1 = 1; ain2 = 4; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 1; win2 = 10; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 ain21 ain32 0 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 win12 win23 0 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 3; ain3 = 6; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 2; win3 = 11; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 ain31 ain42 0 0 0 0    0 0 0 0 0 0 0 0    
        //0 0 win13 win24 0 0 0 0    0 0 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 5; ain4 = 8; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 3; win4 = 12; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 ain41 ain52 0 0 0    0 0 0 0 0 0 0 0  
        //0 0 0 win14 win25 0 0 0    0 0 0 0 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 7; ain5 = 10; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 4; win5 = 13; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 ain51 ain62 0 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 win15 ain26 0 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 9; ain6 = 12; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 5; win6 = 14; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 ain61 ain72 0    0 0 0 0 0 0 0 0    
        //0 0 0 0 0 win16 win27 0    0 0 0 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 11; ain7 = 14; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 6; win7 = 15; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 ain71 ain82    0 0 0 0 0 0 0 0 
        //0 0 0 0 0 0 win17 win28    0 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 13; ain8 = 16;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 7; win8 = 16;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 ain81    ain92 0 0 0 0 0 0 0   
        //0 0 0 0 0 0 0 win18    win29 0 0 0 0 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 15;
        ain9 = 2; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 8;
        win9 = 9; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    ain91 ain10_2 0 0 0 0 0 0  
        //0 0 0 0 0 0 0 0    win19 win2_10 0 0 0 0 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 1; ain10 = 4; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 1; win10 = 10; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 ain10_1 ain11_2 0 0 0 0 0
        //0 0 0 0 0 0 0 0    0 win1_10 win2_11 0 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 3; ain11 = 6; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 2; win11 = 11; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 ain11_1 ain12_2 0 0 0 0   
        //0 0 0 0 0 0 0 0    0 0 win1_11 win2_12 0 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 5; ain12 = 8; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 3; win12 = 12; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 ain12_1 ain13_2 0 0 0    
        //0 0 0 0 0 0 0 0    0 0 0 win1_12 win2_13 0 0 0   
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 7; ain13 = 10; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 4; win13 = 13; win14 = 0; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 ain13_1 ain14_2 0 0   
        //0 0 0 0 0 0 0 0    0 0 0 0 win1_13 win2_14 0 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 9; ain14 = 12; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 5; win14 = 14; win15 = 0; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 ain14_1 ain15_2 0  
        //0 0 0 0 0 0 0 0    0 0 0 0 0 win1_14 win2_15 0    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 11; ain15 = 14; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 6; win15 = 15; win16 = 0;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 ain15_1 ain16_2    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 win1_15 win2_16    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 13; ain16 = 16;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 7; win16 = 16;
        
        #20
        
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 ain16_1    
        //0 0 0 0 0 0 0 0    0 0 0 0 0 0 0 win1_16    
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 15;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 8;
        
        
        //reset
        #20
        
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        ain9 = 0; ain10 = 0; ain11 = 0; ain12 = 0; ain13 = 0; ain14 = 0; ain15 = 0; ain16 = 0;
        
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        win9 = 0; win10 = 0; win11 = 0; win12 = 0; win13 = 0; win14 = 0; win15 = 0; win16 = 0;
        
        #1000
        
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
