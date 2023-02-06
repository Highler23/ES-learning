/**
 * @file		Divider
 * @brief		分频数N的计算公式：[(系统时钟频率/所需时钟频率)-2]/2
 * @input		clk：系统时钟信号
 * @output		fout:分频后的时钟信号
 */
module Divider (clk,fout);
 
input clk;    // 50Mhz
output fout;  // 400hz
 
wire clk;
reg fout;
reg [16:0]count;

always@ (posedge clk)
	begin
		if (count == 62499)
			begin
				count = 0;
				fout = !fout;
			end
		else
			begin
				count = count + 1;
				fout = fout;
			end
	end

endmodule