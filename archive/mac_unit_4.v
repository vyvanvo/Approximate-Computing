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
 
    parameter WORD_SIZE = 8;
    input clk, rst;
    input [WORD_SIZE-1:0] ain;
    input [WORD_SIZE-1:0] win;
    output reg [WORD_SIZE-1:0] aout, wout;
    output reg [2*WORD_SIZE:0] sout;
    
    wire [15:0] product;
    assign product = ain * win;

    always @(posedge clk or posedge rst)begin
        if(rst) begin
        aout <= 0;
        wout <= 0;
        sout <= 0;
        end else begin  
        aout <= ain;
        wout <= win;
        
        sout <= sout + {1'b0, product};
    end
 end
 
endmodule