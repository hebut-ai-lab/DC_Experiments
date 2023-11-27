module compare_tb;
	reg [7:0] A,B;
	wire AEB,ASB,AGB;
		initial begin
		A=8'b0;
		B=8'b0;
        $dumpfile("wave.vcd");        //生成的vcd文件名称
        $dumpvars(0, compare_tb);
		end
	always #1 A={$random}%(50);//生成0-49间的随机数
	always #1 B={$random}%(49);//生成0-48间的随机数
	compare Compare_test(.A(A),.B(B),.AEB(AEB),.ASB(ASB),.AGB(AGB));
endmodule