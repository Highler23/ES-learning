module cnt256(clk,Q,EN);

input clk;
output reg [7:0] Q;
output reg EN;

always@(posedge clk)
	begin
		if(Q == 198)
			begin
				EN<=1;
				Q<=0;
			end
		else 
			begin
				Q<=Q+1;
				EN<=0;
			end
	end
endmodule
