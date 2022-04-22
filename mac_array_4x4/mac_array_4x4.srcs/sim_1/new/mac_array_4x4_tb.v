`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 08:28:17 PM
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
    
    MAC_array_4x4 DUT(.clk(clk), .rst(rst), .ain1(ain1), .ain2(ain2), .ain3(ain3), .ain4(ain4),
                  .win1(win1), .win2(win2), .win3(win3), .win4(win4),
                  .sout11(sout11), .sout12(sout12), .sout21(sout13), .sout22(sout14),
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
        //                                                      0      0      0      win41
        //                                                      0      0      win31  win42
        //                                                      0      win21  win32  win43
        //                                                      win11  win22  win33  win44
        //                                                      win21  win32  win43  0
        //                                                      win31  win42  0      0     
        //                                                      win41  0      0      0
        //0      0      0      ain11  ain12  ain13  ain14 
        //0      0      ain21  ain22  ain23  ain24  0
        //0      ain31  ain32  ain33  ain34  0      0
        //ain41  ain42  ain43  ain44  0       0     0
        ain1 = 2; ain2 = 0; ain3 = 0; ain4 = 0;
        win1 = 3; win2 = 0; win3 = 0; win4 = 0;
        
        #20
        
        //ain13 ain24
        ain1 = 1; ain2 = 4; win1 = 1; win2 = 4;
        
        #20
        
        //0 ain21 0 win12
        ain1 = 0; ain2 = 3; win1 = 0; win2 = 2;
        
        #20
        
        ain1 = 0; ain2 = 0; win1 = 0; win2 = 0;
        
        #100
        
        //outputs
        //{sout11 = 7, sout12 = 10
        // sout21 = 15, sout22 = 22}
        
        
        //test 2
        rst = 1;
        #20
        
        //inputs
        //{ain11 = 2, ain12 = 4
        // ain21 = 3, ain22 = 5}
        
        //{win11 = 1, win12 = 1
        // win21 = 1, win22 = 1}
        
        rst = 0;
        //ain12 0 win21 0
        ain1 = 4; ain2 = 0; win1 = 1; win2 = 0;
        
        #20
        
        //ain11 ain22 win11 win22
        ain1 = 2; ain2 = 5; win1 = 1; win2 = 1;
        
        #20
        
        //0 ain21 0 win12
        ain1 = 0; ain2 = 3; win1 = 0; win2 = 1;
        
        #20
        
        ain1 = 0; ain2 = 0; win1 = 0; win2 = 0;
        
        #100
        
        //outputs
        //{sout11 = 6, sout12 = 6
        // sout21 = 8, sout22 = 8}
        
        //test 3
        rst = 1;
        #20
        
        //inputs
        //{ain11 = 2, ain12 = 4
        // ain21 = 3, ain22 = 5}
        
        //{win11 = 2, win12 = 1
        // win21 = 1, win22 = 2}
        
        rst = 0;
        //ain12 0 win21 0
        ain1 = 4; ain2 = 0; win1 = 1; win2 = 0;
        
        #20
        
        //ain11 ain22 win11 win22
        ain1 = 2; ain2 = 5; win1 = 2; win2 = 2;
        
        #20
        
        //0 ain21 0 win12
        ain1 = 0; ain2 = 3; win1 = 0; win2 = 1;
        
        #20
        
        ain1 = 0; ain2 = 0; win1 = 0; win2 = 0;
        
        #100
        
        //outputs
        //{sout11 = 8, sout12 = 10
        // sout21 = 11, sout22 = 13}
        
        //test 4
        rst = 1;
        #20
        
        //inputs
        //{ain11 = 2, ain12 = 4
        // ain21 = 3, ain22 = 5}
        
        //{win11 = 1, win12 = 2
        // win21 = 3, win22 = 4}
        
        rst = 0;
        //ain12 0 win21 0
        ain1 = 4; ain2 = 0; win1 = 3; win2 = 0;
        
        #20
        
        //ain11 ain22 win11 win22
        ain1 = 2; ain2 = 5; win1 = 1; win2 = 4;
        
        #20
        
        //0 ain21 0 win12
        ain1 = 0; ain2 = 3; win1 = 0; win2 = 2;
        
        #20
        
        ain1 = 0; ain2 = 0; win1 = 0; win2 = 0;
        
        #100
        
        //outputs
        //{sout11 = 14, sout12 = 20
        // sout21 = 18, sout22 = 26}
        
        $finish;
    end
    
endmodule

