`timescale 1ns / 1ps

    
module sequential_pulse_tb();
reg clk;
reg rst_n;       
wire [5:0] pulse_out;

//=== for clk ====
initial begin
    clk = 1'b0;
    forever begin
        #5 clk =~clk; //100MHz
    end
end
//==== main ===
initial begin
    rst_n = 1'b0;
    #100;
    rst_n = 1'b1;
    #100;
end

       
sequential_pulse u_sequential_pulse(
      .clk              (clk  ),
      .rst_n            (rst_n),
      .pulse_out        (pulse_out)
       );
 
endmodule
