`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 19:51:04
// Design Name: 
// Module Name: compare
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


module compare(A,B,AEB,ASB,AGB);
input [7:0] A,B;
output reg AEB,ASB,AGB;
always@(A,B)
begin
    if(A==B)
        begin
        AEB=1'b1;
        ASB=1'b0;
        AGB=1'b0;
        end
     else 
     if(A>B)
        begin
        AEB=1'b0;
        ASB=1'b0;
        AGB=1'b1; 
        end
     else
        begin
        AEB=1'b0;
        ASB=1'b1;
        AGB=1'b0; 
        end
end
endmodule
