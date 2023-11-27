`timescale 1ns / 1ps
module decoder_tb();
reg  [2:0] Data_in;   
reg        Enable;
wire [7:0] Data_out;
    
initial begin
   #100 Enable=1'b1;
   #100 Data_in=3'b000;
   #100 Data_in=3'b001;
   #100 Data_in=3'b010;
   #100 Data_in=3'b011;
   #100 Data_in=3'b100;
   #100 Data_in=3'b101;
   #100 Data_in=3'b110;
   #100 Data_in=3'b111;
   #100 Data_in=3'b010;
   Enable=0;
   #100 Data_in=3'b111;
end

decoder u_decoder_tb(
    .Data_in   (Data_in ),
    .Enable    (Enable  ),
    .Data_out  (Data_out)
     );

endmodule
