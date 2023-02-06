module Tube (clk,tube);

input clk;
output tube;

reg [2:0] tube;
always@ (posedge clk)
	begin
		if (tube == 4)
			begin
				tube =0;
			end
		else
			begin
				tube = tube + 1;
			end
	end

endmodule