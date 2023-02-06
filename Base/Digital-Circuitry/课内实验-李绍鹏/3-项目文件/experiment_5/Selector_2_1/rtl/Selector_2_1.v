/**
 * @brief		Selector_2_1
 * @parameter	a
 * @parameter	b
 * @parameter	sel
 * @parameter	out
 */
module Selector_2_1(a,b,sel,out);

input a,b,sel;//定义信号方向
output out;    
wire nsl,sela,selb;  //内部变量 相当于内部导线（线网类型）

assign nsl =~ sel;
assign sela = a & nsl;
assign selb = b & sel;
assign out = sela | selb;

endmodule 
