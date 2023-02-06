module Run_Watch (cp,S5,S6,LED_bit,LED_SEG);

input cp;
input S5,S6;  // 计时器的reset control 对应开发板S5,S6按键
output [7:0]LED_bit;
output [7:0]LED_SEG;

wire clk_100hz,clk_400hz;
wire clk_10hz,clk_1hz,clk_10s,clk_1m,clk_10m,clk_1h,clk_10h;  // 计时进位线
wire [3:0] bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7;  // 跑表的各位数字
wire next_bit1;  // 进位端输出线

wire [2:0]scan_cnt;
wire [3:0]Data_BCD;

Divider			U1(.clk(cp),.fout1(clk_100hz),.fout2(clk_400hz));
// 计时
Count_10		U2(.fclk(clk_100hz),.reset(S5),.control(S6),.Nout(bit0),.Cy(clk_10hz));  // ms0
Count_10		U3(.fclk(clk_10hz),.reset(S5),.control(S6),.Nout(bit1),.Cy(clk_1hz));    // ms1
Count_10		U4(.fclk(clk_1hz),.reset(S5),.control(S6),.Nout(bit2),.Cy(clk_10s));     // s0
Count_6			U5(.fclk(clk_10s),.reset(S5),.control(S6),.Nout(bit3),.Cy(clk_1m));      // s1
Count_10		U6(.fclk(clk_1m),.reset(S5),.control(S6),.Nout(bit4),.Cy(clk_10m));      // m0
Count_6			U7(.fclk(clk_10m),.reset(S5),.control(S6),.Nout(bit5),.Cy(clk_1h));      // m1
Count_10		U8(.fclk(clk_1h),.reset(S5),.control(S6),.Nout(bit6),.Cy(clk_10h));      // h0
Count_10		U9(.fclk(clk_10h),.reset(S5),.control(S6),.Nout(bit7),.Cy(next_bit1));   // h1
// 显示
Count_8			U10(.fclk(clk_400hz),.cnt(scan_cnt));
Decoder_3_8		U11(.val(scan_cnt),.Pout(LED_bit));
Selector_8_1	U12(.SEL(scan_cnt),.num0(bit0),.num1(bit1),.num2(bit2),.num3(bit3),.num4(bit4),.num5(bit5),.num6(bit6),.num7(bit7),.N(Data_BCD));
BCD_7_SEG		U13(.BCD(Data_BCD),.SEG(LED_SEG));

endmodule