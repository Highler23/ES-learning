module S_Reset_D(clk,reset,d,q,nq);

input  clk,d,reset;
output q,nq;
reg [1:0] q;
reg [1:0] nq;

always@ (posedge clk)
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