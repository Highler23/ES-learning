/**
 * @brief		divider(50MHZ to 200 hz)
 * @details		count = 62499
 * @parameter	clk(50MHZ)
 * @parameter	fout(400HZ)
 */
module Divider(clk,fout);

input clk;
output fout;

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
			end
	end

endmodule