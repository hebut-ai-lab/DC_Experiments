`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 21:37:04
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
parameter N = 9;
parameter DWIDTH = 4;
parameter CLK_Half_Period = 5;
reg clk;
reg rst;
wire [DWIDTH-1:0] data_out;
counter uut(.clk(clk), .rst(rst), .data_out(data_out));
initial begin
rst = 1;
clk = 0;
$display("TestBench is start!");
#15;
rst = 0;
#200;
$stop;
end
always #CLK_Half_Period clk = ~clk;//每隔5纳秒，clk进行一次翻转

endmodule
