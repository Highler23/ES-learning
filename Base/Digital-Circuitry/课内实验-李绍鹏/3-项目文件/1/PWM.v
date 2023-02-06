module PWM (clk,PWM_OUT,select,clkHZ);

input clk;
wire [7:0] PWM_IN = 190;
input [1:0] select;
output PWM_OUT;
output clkHZ;
wire clkHZ;
wire [7:0] cnt,PWM_Set;
wire EN_R,clk_256kHZ;

//div U1 (.clk(clk),.f0(clk_256kHZ));
divchange U1(.clk(clk),.f0(clkHZ),.select(select));
cnt256 U2 (.clk(clkHZ),.EN(EN_R),.Q(cnt));
Register U3 (.EN(EN_R),.D(PWM_IN),.Q(PWM_Set));
COMPARE U4 (.A(cnt),.B(PWM_Set),.AGTB(),.ALTB(PWM_OUT),.AEQB());

endmodule