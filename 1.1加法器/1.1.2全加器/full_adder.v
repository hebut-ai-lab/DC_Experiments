`timescale 1ns / 1ps

module full_adder(
    input    A,
    input    B,
    input    CI,
    output   S,
    output   CO
    );
wire c1,s1,c2;
   
half_adder INSTANCE1_half_adder(
    .A(A),
    .B(B),
    .S(s1),
    .CO(c1)
    );
    
half_adder INSTANCE2_half_adder(
    .A(s1),
    .B(CI),
    .S(S),
    .CO(c2)
    );
assign CO = c1 || c2;    

endmodule
