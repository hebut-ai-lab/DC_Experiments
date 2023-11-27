`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 15:24:38
// Design Name: 
// Module Name: 8_3
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


module encoder(
   input      [7:0] Data_in,
   input            Enable,
   output reg [2:0] Data_out
   ); 

always@(*) begin
    if(Enable==0)
        Data_out=3'b000;
    else begin
        case(Data_in)
          8'b00000001 :Data_out=3'b000;
          8'b00000010 :Data_out=3'b001;
          8'b00000100 :Data_out=3'b010;
          8'b00001000 :Data_out=3'b011;
          8'b00010000 :Data_out=3'b100;
          8'b00100000 :Data_out=3'b101;
          8'b01000000 :Data_out=3'b110;
          8'b10000000 :Data_out=3'b111;
          default:Data_out=3'b000;
        endcase
    end
end
endmodule
