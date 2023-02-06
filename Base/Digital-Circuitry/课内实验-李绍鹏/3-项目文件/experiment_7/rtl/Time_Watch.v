/**
 * @file		Electronic-Chronograph-Stopwatch
 * @input		cp,S5,S6
 * @output		LED_Bit,LED_SEG
 */
module Time_Watch (cp,S5,S6,LED_Bit,LED_SEG);

input cp;
input S5,S6;  // 按键开关
output [7:0] LED_Bit;
output [7:0] LED_SEG;
wire clk_100hz;
wire clk_400hz;
wire [2:0] Pnum;  // 数码管序号
wire [2:0] scan_cnt;
wire [3:0] Data_BCD;
wire [3:0] A,B,C,D,E;


// 时钟分频模块
Divider			U1(.clk(cp),.fout1(clk_100hz),.fout2(clk_400hz));
// 计时模块
Time_Counter	U2(.clk(clk_100hz),.control(S5),.reset(S6));
// 显示模块
Tube			U3(.clk(clk_400hz),.tube(Pnum));
Decoder_3_8		U4(.val(Pnum),.Pout(LED_Bit));

Selector_5_1	U5(.SEL(scan_cnt),.A0(E),.A1(D),.A2(C),.A3(B),.A4(A),.N(Data_BCD));
BCD_7_SEG		U6(.BCD(Data_BCD),.SEG(LED_SEG));

endmodule