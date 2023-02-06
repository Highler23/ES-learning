// @file     Add Up Counter
// @author   212241803537 zhaoqicheng
// @date     2022-11-6

module Add_Counter(CLK,EN,Q,NCR,CY);

input CLK,EN,NCR;
output Q,CY;
reg [3:0] Q;
reg [1:0] CY;

always@ (posedge CLK)
	begin
		if (~NCR)
			begin
				Q<=0;
				CY<=0;
			end
		else if (EN)
			begin
				if (Q==9)
					begin
						Q<=0;
						CY=1;
					end
				else
					begin
						Q<=Q+1;
						CY=0;
					end
			end
	end

endmodule
