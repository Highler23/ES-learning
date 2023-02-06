module trig(clk,D,Q,nQ);

input clk,D;
output Q,nQ;
reg Q,nQ;

always@(posedge clk)
begin
	begin
		Q<=D;
		nQ<=!D;
	end
end
endmodule
