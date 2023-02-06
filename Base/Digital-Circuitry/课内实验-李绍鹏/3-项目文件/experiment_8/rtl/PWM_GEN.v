/*-----------------------------------------------------
	@file		PWM_GEN
-----------------------------------------------------*/
module PWM_GEN(clk,PWM_Width,PWM_OUT,N);

input clk;
input [7:0] PWM_Width;
input [7:0] N;
output PWM_OUT;

wire [7:0]cnt,PWM_Set;
wire EN_R,clk256khz;

// 功能实现
// Divider				U1(.clk(clk),.fout(clk256khz));
Count_256			U2(.clk(clk),.count(cnt),.EN(EN_R),.N(N));
Register			U4(.EN(EN_R), .set(pwn_set), .width(pwm_width));
Data_Comparator		U3(.A(cnt),.B(PWM_Set),.ALTB(PWM_OUT));

endmodule