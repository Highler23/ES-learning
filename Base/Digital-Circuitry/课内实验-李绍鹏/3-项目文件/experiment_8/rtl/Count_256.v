module Count_256(clk,count,EN,N);

input clk;
input [7:0] N;
output reg EN;
output reg [7:0]count;

always@(posedge clk)
	begin
		if(count == N)
			begin
				count = 0;
				EN = 1;
			end
		else
			begin
				count = count + 1;
				EN = 0;
			end
	end

endmodule