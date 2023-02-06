/**
 * @brief		divider(50MHZ to 200 hz)
 * @details		count = 124999
 * @parameter	clk(50MHZ)
 * @parameter	fout(200HZ)
 */
module Divider(clk,fout);

input clk;
output fout;

wire clk;
reg fout;
reg [19:0]count;

always@ (posedge clk)
	begin
		if (count == 124999)
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