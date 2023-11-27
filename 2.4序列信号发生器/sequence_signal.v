//有限状态机方式实现01011010序列信号产生器  
module sequence_signal(  
    input clk,
    input rst_n, 
    output reg dout 
     );  
//    reg dout;  
    reg [3:0] pre_state, next_state;  

            
    always @(posedge clk or negedge rst_n)  
        begin  
            if(rst_n == 0)  
                pre_state <= 3'b000;  
            else  
                pre_state <= next_state;  
        end  
  
    always @(pre_state)  
        begin  
            case(pre_state)  
                 3'b000:  
                    begin  
                        dout = 1'b0;  
                        next_state <=  3'b001;  
                    end  
                3'b001:  
                    begin  
                        dout = 1'b1;  
                        next_state =  3'b010;  
                    end  
                 3'b010:  
                    begin  
                        dout = 1'b0;  
                        next_state = 3'b011;  
                    end  
                3'b011:  
                    begin  
                        dout = 1'b1;  
                        next_state = 3'b100;  
                    end  
                3'b100:  
                    begin  
                        dout = 1'b1;  
                        next_state = 3'b101;  
                    end  
                3'b101:  
                    begin  
                    dout = 1'b0;  
                    next_state =3'b110;  
                    end
                3'b110:  
                    begin  
                    dout = 1'b1;  
                    next_state =3'b111;  
                    end
                3'b111:  
                    begin  
                    dout = 1'b0;  
                    next_state = 3'b000;  
                    end                                            
                default: next_state = 3'b000;  
            endcase  
        end  
  
endmodule  


