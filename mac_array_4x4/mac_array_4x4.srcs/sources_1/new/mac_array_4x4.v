`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 08:25:15 PM
// Design Name: 
// Module Name: mac_array_4x4
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


module register (clk, rst, write_en, data_in, data_out
    );
    
    parameter WORD_SIZE = 8;
    input clk;
    input rst;
    input write_en;
    input [WORD_SIZE-1:0] data_in;
    output reg [WORD_SIZE-1:0] data_out;
    
    always @(posedge rst or posedge clk) begin
        if (rst) begin
            data_out <= {WORD_SIZE{1'b0} };
        end else if (clk) begin
        
            if (write_en) begin
                data_out <= data_in;
            end
            
        end
    
    end
    
endmodule


module mac_unit(
    input clk,
    input rst,
    input [7:0] ain, //operand
    input [7:0] win, //operand
    output [7:0] aout,
    output [7:0] wout,
    output [16:0] sout
    );
    
    wire [15:0] product;
    wire [16:0] sum;
    
    //operand register
    register a_reg(.clk(clk), .rst(rst), .write_en(clk), .data_in(ain), .data_out(aout)); // a out for the next mac unit in the array
    register w_reg(.clk(clk), .rst(rst), .write_en(clk), .data_in(win), .data_out(wout)); // w out for the next mac unit in the array 
    
    assign product = aout * wout;
    assign sum = sout + product;
    
    //accumulator register
    register #(.WORD_SIZE(17)) accumulator_reg (.clk(clk), .rst(rst), .write_en(clk), .data_in(sum), .data_out(sout));
     
endmodule


module mac_array_4x4(
    input  clk,
    input rst,
    input [7:0] ain1,
    input [7:0] ain2,
    input [7:0] ain3,
    input [7:0] ain4,
    input [7:0] win1,
    input [7:0] win2,
    input [7:0] win3,
    input [7:0] win4,
    output [16:0] sout11,
    output [16:0] sout12,
    output [16:0] sout13,
    output [16:0] sout14,
    output [16:0] sout21,
    output [16:0] sout22,
    output [16:0] sout23,
    output [16:0] sout24,
    output [16:0] sout31,
    output [16:0] sout32,
    output [16:0] sout33,
    output [16:0] sout34,
    output [16:0] sout41,
    output [16:0] sout42,
    output [16:0] sout43,
    output [16:0] sout44
    ); //4x4 MAC array
    
    wire [7:0] mac_aout11, mac_aout12, mac_aout13, mac_aout14;
    wire [7:0] mac_aout21, mac_aout22, mac_aout23, mac_aout24; 
    wire [7:0] mac_aout31, mac_aout32, mac_aout33, mac_aout34;
    wire [7:0] mac_aout41, mac_aout42, mac_aout43, mac_aout44; 
    
    wire [7:0] mac_wout11, mac_wout12, mac_wout13, mac_wout14;
    wire [7:0] mac_wout21, mac_wout22, mac_wout23, mac_wout24;
    wire [7:0] mac_wout31, mac_wout32, mac_wout33, mac_wout34;
    wire [7:0] mac_wout41, mac_wout42, mac_wout43, mac_wout44;
   
    //row 1
    mac_unit mac_unit11 (.clk(clk), .rst(rst), .ain(ain1), .win(win1), .aout(mac_aout11), .wout(mac_wout11), .sout(sout11));
    mac_unit mac_unit12 (.clk(clk), .rst(rst), .ain(mac_aout11), .win(win2), .aout(mac_aout12), .wout(mac_wout12), .sout(sout12));
    mac_unit mac_unit13 (.clk(clk), .rst(rst), .ain(mac_aout12), .win(win3), .aout(mac_aout13), .wout(mac_wout13), .sout(sout13));
    mac_unit mac_unit14 (.clk(clk), .rst(rst), .ain(mac_aout13), .win(win4), .aout(mac_aout14), .wout(mac_wout14), .sout(sout14));
   
    //row 2
    mac_unit mac_unit21 (.clk(clk), .rst(rst), .ain(ain2), .win(mac_wout11), .aout(mac_aout21), .wout(mac_wout21), .sout(sout21));
    mac_unit mac_unit22 (.clk(clk), .rst(rst), .ain(mac_aout21), .win(mac_wout12), .aout(mac_aout22), .wout(mac_wout22), .sout(sout22));
    mac_unit mac_unit23 (.clk(clk), .rst(rst), .ain(mac_aout22), .win(mac_wout13), .aout(mac_aout23), .wout(mac_wout23), .sout(sout23));
    mac_unit mac_unit24 (.clk(clk), .rst(rst), .ain(mac_aout23), .win(mac_wout14), .aout(mac_aout24), .wout(mac_wout24), .sout(sout24));
    
    //row 3
    mac_unit mac_unit31 (.clk(clk), .rst(rst), .ain(ain3), .win(mac_wout21), .aout(mac_aout31), .wout(mac_wout31), .sout(sout31));
    mac_unit mac_unit32 (.clk(clk), .rst(rst), .ain(mac_aout31), .win(mac_wout22), .aout(mac_aout32), .wout(mac_wout32), .sout(sout32));
    mac_unit mac_unit33 (.clk(clk), .rst(rst), .ain(mac_aout32), .win(mac_wout23), .aout(mac_aout33), .wout(mac_wout33), .sout(sout33));
    mac_unit mac_unit34 (.clk(clk), .rst(rst), .ain(mac_aout33), .win(mac_wout24), .aout(mac_aout34), .wout(mac_wout34), .sout(sout34));
    
    //row 4
    mac_unit mac_unit41 (.clk(clk), .rst(rst), .ain(ain4), .win(mac_wout31), .aout(mac_aout41), .wout(mac_wout41), .sout(sout41));
    mac_unit mac_unit42 (.clk(clk), .rst(rst), .ain(mac_aout41), .win(mac_wout32), .aout(mac_aout42), .wout(mac_wout42), .sout(sout42));
    mac_unit mac_unit43 (.clk(clk), .rst(rst), .ain(mac_aout42), .win(mac_wout33), .aout(mac_aout43), .wout(mac_wout43), .sout(sout43));
    mac_unit mac_unit44 (.clk(clk), .rst(rst), .ain(mac_aout43), .win(mac_wout34), .aout(mac_aout44), .wout(mac_wout44), .sout(sout44));
    
endmodule

