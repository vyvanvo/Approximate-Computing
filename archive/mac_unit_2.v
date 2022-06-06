`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2022 01:45:50 AM
// Design Name: 
// Module Name: mac_unit
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


module mac_unit(
    clk, rst,
    ain, win,
    aout, wout, sout
    );
 
    input clk, rst;
    input [7:0] ain;
    input [7:0] win;
    output reg [7:0] aout, wout;
    output reg [16:0] sout;

    always @(posedge clk or posedge rst)begin
        if(rst) begin
        aout <= 0;
        wout <= 0;
        sout <= 0;
        end else begin  
        aout <= ain;
        wout <= win;
        sout <= sout + (ain * win);
    end
 end
 
endmodule