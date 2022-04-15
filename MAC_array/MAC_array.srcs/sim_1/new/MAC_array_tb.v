`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 12:07:36 AM
// Design Name: 
// Module Name: MAC_array_tb
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


module MAC_array_tb(
    );
    
    reg clk, rst;
    reg [7:0] ain1, ain2, win1, win2;
    wire [16:0] sout11, sout12, sout21, sout22;
    
    MAC_array DUT(.clk(clk), .rst(rst), .ain1(ain1), .ain2(ain2),
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
        rst = 1;
        #20
        
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
        
        $finish;
    end
    
endmodule
