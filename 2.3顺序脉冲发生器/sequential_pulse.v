`timescale 1ns / 1ps

module sequential_pulse(
    input       clk,
    input       rst_n,
    
    output reg [5:0] pulse_out
    );
    
    //reg [3:0] pulse_out;
    reg [2:0] pulse_state;
    reg [2:0] next_pulse_state;
    
always@(pulse_state)begin
    case (pulse_state)
        3'b000: begin
        pulse_out<=6'b100000;
        next_pulse_state<=3'b001;
        end
        
        3'b001: begin
        pulse_out<=6'b010000;
        next_pulse_state<=3'b010;
        end  
        
        3'b010: begin
        pulse_out<=6'b001000;
        next_pulse_state<=3'b011;
        end
        
        3'b011: begin
        pulse_out<=6'b000100;
        next_pulse_state<=3'b100;
        end
         
        3'b100: begin
        pulse_out<=6'b000010;
        next_pulse_state<=3'b101;
        end
        
        3'b101: begin
        pulse_out<=6'b000001;
        next_pulse_state<=3'b000;
        end                                     
     endcase 
end 

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
        pulse_state<=3'b000;
    else
        pulse_state<=next_pulse_state;
end

endmodule
