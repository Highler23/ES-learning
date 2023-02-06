/**
 * @brief		Binary_Counter
 * @parameter	clk(400HZ)
 * @parameter	Q(count_value signal)
 */
module count_8(clk,Q);

input clk;
output Q;
reg [2:0] Q;

always@(posedge clk)
	begin
		if(Q == 7)
			begin 
				Q = 0;
			end
		else
			begin
				Q = Q + 1;
			end
	end

endmodule

