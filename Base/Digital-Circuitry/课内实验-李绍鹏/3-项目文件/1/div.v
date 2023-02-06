module div (clk,f0);

input clk;
output reg f0;
reg [31:0] scan_cnt;

always@(posedge clk)		//256kHZ
	begin
		if(scan_cnt==255)
			begin
				scan_cnt = 0;
				f0 = !f0;
			end
		else 
			begin
				scan_cnt = scan_cnt + 1;
			end
	end

endmodule