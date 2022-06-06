`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 01:50:04 AM
// Design Name: 
// Module Name: mac_unit_tb
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


module mac_unit_tb(
    );
    
    reg clk, rst;
    reg [7:0] ain, win;
    wire [7:0] aout, wout;
    wire [16:0] sout;
    
    mac_unit DUT(.clk(clk), .rst(rst), .ain(ain), .win(win), .aout(aout), .wout(wout), .sout(sout));
    
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
        
        rst = 0;
        ain = 2;
        win = 3;
        #100
        
        ain = 4;
        win = 5;
        #100
        
        $finish;
    end
endmodule
