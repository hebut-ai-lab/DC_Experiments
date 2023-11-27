`timescale 1ns / 1ps

module sequence_signal_tb;
	reg clk;
	reg rst_n;
	
	wire dout;
	
	always
		#10
		 clk = ~clk;
		
	initial begin
			clk = 1'b0;
			rst_n = 1'b1;
			#10
			rst_n = 1'b0;
			#10 
			rst_n = 1'b1;
		end
    sequence_signal U1(.clk(clk), .rst_n(rst_n), .dout(dout));
 
endmodule


