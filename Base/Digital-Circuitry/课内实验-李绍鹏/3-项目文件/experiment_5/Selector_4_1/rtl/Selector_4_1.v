/**
 * @brief		Selector_4_1
 * @parameter	a
 * @parameter	b
 * @parameter	c
 * @parameter	d
 * @parameter	sel
 * @parameter	q
 */
module Selector_4_1（a,b,c,d,sel,q）；

input  a,b,c,d;
input [1:0] sel;
output q;
wire q_int1,q_int2;

Selector_2_1 U1(a,b,sel[0],q_int1);
Selector_2_1 U2(c,d,sel[0],q_int2);
Selector_2_1 U3(q_int1,q_int2,sel[0],q);

endmodule
