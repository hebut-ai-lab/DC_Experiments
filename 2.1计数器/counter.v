`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 21:23:56
// Design Name: 
// Module Name: counter
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


module counter(clk,rst,data_out);
parameter N = 9;
parameter DWIDTH = 4;
input clk;
input rst;
output reg [DWIDTH-1:0] data_out;
always@ (posedge clk)
begin
    if(rst)begin
        data_out <= 1'b0;
        end
        else if (data_out == (N-1))begin
        data_out <= 1'b0;
        end
        else begin
            data_out <= data_out + 1'b1;
    end
end

endmodule
