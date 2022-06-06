`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 12:36:07 AM
// Design Name: 
// Module Name: mac_array_8x8_tb
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


module mac_array_8x8_tb(
    );
    
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4, ain5, ain6, ain7, ain8; 
    reg [7:0] win1, win2, win3, win4, win5, win6, win7, win8;
    wire [16:0] sout11, sout12, sout13, sout14, sout15, sout16, sout17, sout18;
    wire [16:0] sout21, sout22, sout23, sout24, sout25, sout26, sout27, sout28;
    wire [16:0] sout31, sout32, sout33, sout34, sout35, sout36, sout37, sout38;
    wire [16:0] sout41, sout42, sout43, sout44, sout45, sout46, sout47, sout48;
    wire [16:0] sout51, sout52, sout53, sout54, sout55, sout56, sout57, sout58;
    wire [16:0] sout61, sout62, sout63, sout64, sout65, sout66, sout67, sout68;
    wire [16:0] sout71, sout72, sout73, sout74, sout75, sout76, sout77, sout78;
    wire [16:0] sout81, sout82, sout83, sout84, sout85, sout86, sout87, sout88;
    
    mac_array_8x8 DUT(.clk(clk), .rst(rst), 
                    .ain1(ain1), .ain2(ain2), .ain3(ain3), .ain4(ain4), .ain5(ain5), .ain6(ain6), .ain7(ain7), .ain8(ain8),
                    .win1(win1), .win2(win2), .win3(win3), .win4(win4), .win5(win5), .win6(win6), .win7(win7), .win8(win8),
                    .sout11(sout11), .sout12(sout12), .sout13(sout13), .sout14(sout14), .sout15(sout15), .sout16(sout16), .sout17(sout17), .sout18(sout18),
                    .sout21(sout21), .sout22(sout22), .sout23(sout23), .sout24(sout24), .sout25(sout25), .sout26(sout26), .sout27(sout27), .sout28(sout28),
                    .sout31(sout31), .sout32(sout32), .sout33(sout33), .sout34(sout34), .sout35(sout35), .sout36(sout36), .sout37(sout37), .sout38(sout38),
                    .sout41(sout41), .sout42(sout42), .sout43(sout43), .sout44(sout44), .sout45(sout45), .sout46(sout46), .sout47(sout47), .sout48(sout48),
                    .sout51(sout51), .sout52(sout52), .sout53(sout53), .sout54(sout54), .sout55(sout55), .sout56(sout56), .sout57(sout57), .sout58(sout58),
                    .sout61(sout61), .sout62(sout62), .sout63(sout63), .sout64(sout64), .sout65(sout65), .sout66(sout66), .sout67(sout67), .sout68(sout68),
                    .sout71(sout71), .sout72(sout72), .sout73(sout73), .sout74(sout74), .sout75(sout75), .sout76(sout76), .sout77(sout77), .sout78(sout78),
                    .sout81(sout81), .sout82(sout82), .sout83(sout83), .sout84(sout84), .sout85(sout85), .sout86(sout86), .sout87(sout87), .sout88(sout88)
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
        rst = 1;
        
        #20
        
        //inputs
        
        //A[] = 8x2
        //{ain11 = 1, ain12 = 2,
        // ain21 = 3, ain22 = 4,
        // ain31 = 5, ain32 = 6, 
        // ain41 = 7, ain42 = 8,
        // ain51 = 9, ain52 = 10,
        // ain61 = 11, ain62 = 12,
        // ain71 = 13, ain72 = 14,
        // ain81 = 15, ain82 = 16 }
        
        //W[] = 2x8
        //{win11 = 1, win12 = 2, win13 = 3, win14 = 4, win15 = 5, win16 = 6, win17 = 7, win18 = 8,
        // win21 = 9, win22 = 10, win23 = 11, win24 = 12, win25 = 13, win26 = 14, win27 = 15, win28 = 16}
        
        rst = 0;
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
        
        //ain12 0 0 0 0 0 0 0
        //win21 0 0 0 0 0 0 0
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 9; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        
        #20
        
        //ain11 ain22 0 0 0 0 0 0
        //win11 win22 0 0 0 0 0 0
        ain1 = 1; ain2 = 4; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 1; win2 = 10; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        
        #20
        
        //0 ain21 ain32 0 0 0 0 0
        //0 win12 win23 0 0 0 0 0
        ain1 = 0; ain2 = 3; ain3 = 6; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 0; win2 = 2; win3 = 11; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        
        #20
        
        //0 0 ain31 ain42 0 0 0 0 
        //0 0 win13 win24 0 0 0 0 
        ain1 = 0; ain2 = 0; ain3 = 5; ain4 = 8; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 0; win2 = 0; win3 = 3; win4 = 12; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        
        #20
        
        //0 0 0 0 ain41 ain52 0 0 0 
        //0 0 0 0 win14 win25 0 0 0  
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 7; ain5 = 10; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 0; win2 = 0; win3 = 0; win4 = 4; win5 = 13; win6 = 0; win7 = 0; win8 = 0;
        
        #20
        
        //0 0 0 0 0 ain51 ain62 0 0 
        //0 0 0 0 0 win15 ain26 0 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 9; ain6 = 12; ain7 = 0; ain8 = 0;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 5; win6 = 14; win7 = 0; win8 = 0;
        
        
        #20
        
        //0 0 0 0 0 ain61 ain72 0 
        //0 0 0 0 0 win16 win27 0 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 11; ain7 = 14; ain8 = 0;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 6; win7 = 15; win8 = 0;
        
        #20
        
        //0 0 0 0 0 0 ain71 ain82 
        //0 0 0 0 0 0 win17 win28 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 13; ain8 = 16;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 7; win8 = 16;
        
        #20
        
        //0 0 0 0 0 0 0 ain81 
        //0 0 0 0 0 0 0 win18 
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 15;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 8;
        
        #20
        
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0; ain5 = 0; ain6 = 0; ain7 = 0; ain8 = 0;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0; win5 = 0; win6 = 0; win7 = 0; win8 = 0;
        
        #500
        
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
