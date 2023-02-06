/**
 * @brief		Binary_Counter
 * @parameter	clk(200HZ)
 * @parameter	Q(count_value signal)
 * @parameter	Cy(carry signal)
 */
module count_8(clk,Q,Cy);

input clk;
output[1:0]Q;
reg[1:0]Q;
output reg Cy;

always@(posedge clk)
	begin
		if(Q==1)
			begin 
				Q<=0;
				Cy=1;
			end
		else
			begin
				Q<=Q+1;
				Cy=0;
			end
	end

endmodule

