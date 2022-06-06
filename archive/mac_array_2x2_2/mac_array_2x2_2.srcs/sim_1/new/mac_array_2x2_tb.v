`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 02:20:25 AM
// Design Name: 
// Module Name: mac_array_2x2_tb
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


module mac_array_2x2_tb(
    );
    
    reg clk, rst;
    reg [7:0] ain1, ain2, win1, win2;
    wire [16:0] sout11, sout12, sout21, sout22;
    
    mac_array_2x2 DUT(.clk(clk), .rst(rst), .ain1(ain1), .ain2(ain2),
                  .win1(win1), .win2(win2),
                  .sout11(sout11), .sout12(sout12), .sout21(sout21), .sout22(sout22)); 
                  
     
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
        //{ain11 = 1, ain12 = 2
        // ain21 = 3, ain22 = 4}
        
        //{win11 = 1, win12 = 2
        // win21 = 3, win22 = 4}
        
        rst = 0;
        //ain12 0 win21 0
        ain1 = 2; ain2 = 0; win1 = 3; win2 = 0;
        
        #20
        
        //ain11 ain22 win11 win22
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
        
        //{win11 = 1, win12 = 2
        // win21 = 3, win22 = 4}
        
        rst = 0;
        //ain11 0 win11 0
        ain1 = 2; ain2 = 0; win1 = 1; win2 = 0;
        
        #20
        
        //ain12 ain21 win21 win12
        ain1 = 4; ain2 = 3; win1 = 3; win2 = 2;
        
        #20
        
        //0 ain22 0 win22
        ain1 = 0; ain2 = 5; win1 = 0; win2 = 4;
        
        #20
        
        ain1 = 0; ain2 = 0; win1 = 0; win2 = 0;
        
        #100
        
        //outputs
        //{sout11 = 14, sout12 = 20
        // sout21 = 18, sout22 = 26}
        
        
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
