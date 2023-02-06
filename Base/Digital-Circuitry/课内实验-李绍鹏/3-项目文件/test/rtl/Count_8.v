/**
 * @file		Binary_Counter
 * @input		fclk(400HZ)
 * @output		Q(count_value signal)
 */
module Count_8(fclk,cnt);

input fclk;
output cnt;
reg [2:0] cnt;

always@(posedge fclk)
	begin
		if(cnt == 3'b111)
			begin 
				cnt = 3'b000;
			end
		else
			begin
				cnt = cnt + 3'b001;
			end
	end

endmodule