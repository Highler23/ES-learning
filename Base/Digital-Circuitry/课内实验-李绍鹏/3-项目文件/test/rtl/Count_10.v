module Count_10(clk,Q,EN);

input clk;
output reg [9:0] Q;  // 分辨率为1KHZ，故计数器从0-999计数，需要10位
output reg EN;

always@(posedge clk)
	begin
		if(Q == 999)
			begin
				EN = 1;
				Q = 0;
			end
		else 
			begin
				Q = Q + 1;
				EN = 0;
			end
	end
endmodule