`timescale 1ns / 1ps
              
module full_adder_tb();        
reg    A;
reg    B;
reg    CI;                   
wire   S;
wire   CO;              
	                 
initial begin
	CI = 0;
	A = 0;
	B = 0;
	#100
	CI = 0;
	A = 0;
	B = 1;
	#100
	CI = 0;
	A = 1;
	B = 0;
	#100
	CI = 0;
	A = 1;
	B = 1;
	#100
	CI = 1;
	A = 0;
	B = 0;
	#100
	CI = 1;
	A = 0;
	B = 1;
	#100
	CI = 1;
	A = 1;
	B = 0;
	#100
	CI = 1;
	A = 1;
	B = 1;
end	

full_adder  INSTANCE_full_adder(
	.A  (A ),
	.B  (B ),
	.CI (CI),
	.S  (S ),
	.CO (CO)
);  
	
endmodule



