`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 22:35:46
// Design Name: 
// Module Name: cycle_left_register_tb
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
module cycle_left_register_tb();
parameter MSB = 4;
reg [MSB - 1 : 0] din;
reg i_rst;
reg i_clk;
reg i_load;
wire [MSB - 1 : 0] dout;
//generate clock
initial begin
i_clk = 0;
forever begin
#5 i_clk = ~i_clk;
end
end
//generate rst and input data
initial begin
i_rst = 1;
din = 0;
i_load = 0;
# 22
i_rst = 0;
@(negedge i_clk) begin
din = 'b1011;
i_load = 1;
end
@(negedge i_clk) begin
i_load = 0;
end
repeat(5) @(posedge i_clk);
@(negedge i_clk) begin
din = 'd0101;//1010,0101
i_load = 1;
end
@(negedge i_clk) i_load = 0;
repeat(4) @(posedge i_clk);
#10 $finish;
end
initial
$monitor (" i_rst = %0b, i_load = %0b, din = %b, dout = %b", i_rst,
i_load, din, dout);
cycle_left_register uut(
.i_clk(i_clk),
.i_rst(i_rst),
.i_load(i_load),
.din(din),
.dout(dout)
);
endmodule
