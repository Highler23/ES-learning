/**
 * @file		十进制计数器
 * @input		fclk 分频后的时钟信号
 * @input		reset 复位
 * @input		control 计时控制端
 * @output		Nout 本位数字输出
 * @output		Cy  进位数字
 */
module Count_10 (fclk,reset,control,Nout,Cy);

input fclk,reset,control;
output Nout,Cy;
reg [3:0] Nout;
reg Cy;

always@ (posedge fclk or negedge reset) 
	begin
		if (~reset)
			begin
				Nout = 4'b0000;
				Cy = 0;
			end
		else if (~control)
			begin
				if (Nout == 4'b1010)
					begin
						Nout = 4'b0000;
						Cy = 1;
					end
				else
					begin
						Nout = Nout + 4'b0001;
						Cy = 0;
					end
			end
	end

endmodule