// @file    Basic D flip-flop
// @author  212241803537 zhaoqicheng
// @date    2022-11-6

module Base_D(CLK,D,Q,NQ);

input CLK,D;
output Q,NQ;
reg [1:0] Q;
reg [1:0] NQ;

always@(posedge CLK)
begin
	Q<=D;
	NQ<=!D;
end

endmodule

