`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 02:40:19 AM
// Design Name: 
// Module Name: mac_array_4x4_tb
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


module mac_array_4x4_tb(
    );
    
    reg clk, rst;
    reg [7:0] ain1, ain2, ain3, ain4; 
    reg [7:0] win1, win2, win3, win4;
    wire [16:0] sout11, sout12, sout13, sout14;
    wire [16:0] sout21, sout22, sout23, sout24;
    wire [16:0] sout31, sout32, sout33, sout34;
    wire [16:0] sout41, sout42, sout43, sout44;
    
    mac_array_4x4 DUT(.clk(clk), .rst(rst), .ain1(ain1), .ain2(ain2), .ain3(ain3), .ain4(ain4),
                  .win1(win1), .win2(win2), .win3(win3), .win4(win4),
                  .sout11(sout11), .sout12(sout12), .sout13(sout13), .sout14(sout14),
                  .sout21(sout21), .sout22(sout22), .sout23(sout23), .sout24(sout24),
                  .sout31(sout31), .sout32(sout32), .sout33(sout33), .sout34(sout34),
                  .sout41(sout41), .sout42(sout42), .sout43(sout43), .sout44(sout44)
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
        //{ain11 = 1, ain12 = 2, ain13 = 3, ain14 = 4,
        // ain21 = 5, ain22 = 6, ain23 = 7, ain24 = 8,
        // ain31 = 9, ain32 = 10, ain33 = 11, ain34 = 12,
        // ain41 = 13, ain42 = 14, ain43 = 15, ain44 = 16}
        
        //{win11 = 1, win12 = 2, win13 = 3, win14 = 4,
        // win21 = 5, win22 = 6, win23 = 7, win24 = 8,
        // win31 = 9, win32 = 10, win33 = 11, win34 = 12,
        // win41 = 13, win42 = 14, win43 = 15, win44 = 16}
        
        rst = 0;
        //                                                      0      0      0      win14
        //                                                      0      0      win13  win24
        //                                                      0      win12  win23  win34
        //                                                      win11  win22  win33  win44
        //                                                      win21  win32  win43  0
        //                                                      win31  win42  0      0     
        //                                                      win41  0      0      0
        //0      0      0      ain11  ain12  ain13  ain14 
        //0      0      ain21  ain22  ain23  ain24  0
        //0      ain31  ain32  ain33  ain34  0      0
        //ain41  ain42  ain43  ain44  0       0     0
        
        //ain14 0 0 0
        //win41 0 0 0
        ain1 = 4; ain2 = 0; ain3 = 0; ain4 = 0;
        win1 = 13; win2 = 0; win3 = 0; win4 = 0;
        
        #20
        
        //ain13 ain 24 0 0
        //win31 win42 0 0
        ain1 = 3; ain2 = 8; ain3 = 0; ain4 = 0;
        win1 = 9; win2 = 14; win3 = 0; win4 = 0;
        
        #20
        
        //ain12 ain23 ain43 0
        //win21 win32 win43 0
        ain1 = 2; ain2 = 7; ain3 = 12; ain4 = 0;
        win1 = 5; win2 = 10; win3 = 15; win4 = 0;
        
        #20
        
        //ain11 ain22 ain33 ain44
        //win11 win22 win33 win44
        ain1 = 1; ain2 = 6; ain3 = 11; ain4 = 16;
        win1 = 1; win2 = 6; win3 = 11; win4 = 16;
        
        #20
        
        //0 ain21 ain32 ain43 
        //0 win12 win23 win34
        ain1 = 0; ain2 = 5; ain3 = 10; ain4 = 15;
        win1 = 0; win2 = 2; win3 = 7; win4 = 12;
        
        #20
        
        //0 0 ain31 ain42 
        //0 0 win13 win24
        ain1 = 0; ain2 = 0; ain3 = 9; ain4 = 14;
        win1 = 0; win2 = 0; win3 = 3; win4 = 8;
        
        
        #20
        
        //0 0 0 ain41
        //0 0 0 win14
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 13;
        win1 = 0; win2 = 0; win3 = 0; win4 = 4;
        
        #20
        
        ain1 = 0; ain2 = 0; ain3 = 0; ain4 = 0;
        win1 = 0; win2 = 0; win3 = 0; win4 = 0;
        
        #200
        
        //outputs
        //{sout11 = 90, sout12 = 100, sout13 = 110, sout14 = 120
        // sout21 = 202, sout22 = 228, sout23 = 254, sout24 = 280
        // sout31 = 314, sout32 = 356, sout33 = 398, sout34 = 440
        // sout41 = 426, sout42 = 484, sout43 = 542, sout44 = 600}
        
        $finish;
    end
    
endmodule

