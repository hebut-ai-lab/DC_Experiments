`timescale 1ns / 1ps                 
module half_adder_tb();        
reg    A;
reg    B;                   
wire   S;
wire   CO;              
	                 
initial begin
	A = 0;
	B = 0;
	#100
	A = 1;
	B = 1;
	#100
	A = 1;
	B = 0;	
	#100
	A = 0;
	B = 1;
	#100
	A = 0;
	B = 0;
end	

half_adder  INSTANCE_half_adder(
	.S  ( S  ),
	.CO ( CO ),
	.A  ( A  ),
	.B  ( B  )
);  
	
endmodule


