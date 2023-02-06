/**
 * @file		Divider
 * @brief		分频数N的计算公式：[(系统时钟频率/所需时钟频率)-2]/2
 * @input		clk：系统时钟信号
 * @output		fout:分频后的时钟信号
 */
module Divider (clk,fout1,fout2);
 
input clk;    // 50Mhz
output fout1,fout2;  // fout1-100hz fout2-400hz
 
wire clk;
reg fout1,fout2;
reg [16:0]count1;
reg [15:0]count2;

always@ (posedge clk)
	begin
		if (count1 == 249_999)
			begin
				count1 = 0;
				fout1 = !fout1;
			end
		else
			begin
				count1 = count1 + 1;
				fout1 = fout1;
			end
	end

always@ (posedge clk)
	begin
		if (count2 == 62499)
			begin
				count2 = 0;
				fout2 = !fout2;
			end
		else
			begin
				count2 = count2 + 1;
				fout2 = fout2;
			end
	end

endmodule