module Nixie_Display (cp,LED_Bit,LED_SEG);

input cp;
output [7:0]LED_Bit;  // 位选
output [7:0]LED_SEG;  // 段选
wire clk_400Hz;
wire [2:0]scan_cnt;
wire [3:0]Data_BCD;

Divider U1(.clk(cp),.fout(clk_400HZ));
count_8 U2(.clk(clk_400HZ),.Q(Scan_cnt));
Decoder_3_8 U3(.B(scan_cnt),.F(LED_Bit));
Selector_8_1 U4(.SEL(scan_cnt),.a(4'b1000),.b(4'b0111),.c(4'b0110),.d(4'b0101),.e(4'b0100),.f(4'b0011),.g(4'b0010),.h(4'b0001),.Y(Data_BCD));

BCD_7_Seg U5(.BCD(Date_BCD),.SEG(LED_SEG));

endmodule 