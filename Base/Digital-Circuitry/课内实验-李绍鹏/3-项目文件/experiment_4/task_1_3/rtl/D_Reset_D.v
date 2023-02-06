module D_Reset_D(clk,reset,d,q,nq);

input clk,d,reset;
output reg q,nq;

always@ (posedge clk or negedge reset)
	begin
		if (!reset)
			begin
				q<=0;
				nq<=1;
			end
		else
			begin
				q<=d;
				nq<=~d;
			end
	end

endmodule