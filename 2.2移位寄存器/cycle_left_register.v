`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 22:18:03
// Design Name: 
// Module Name: cycle_left_register
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


module cycle_left_register#(parameter MSB = 4)(
input [MSB - 1 : 0] din,
input i_rst,
input i_load,
input i_clk,
output [MSB - 1 : 0] dout
    );
    reg [MSB - 1 : 0] dout_mid;
always@(posedge i_clk) begin
    if(i_rst) begin
    dout_mid <= 'd0;
    end
        else if(i_load) begin
        dout_mid <= din;
        end
        else begin
        dout_mid <= {dout_mid[MSB - 2 : 0], dout_mid[MSB - 1]};
        end
        end
        assign dout = dout_mid;
endmodule
