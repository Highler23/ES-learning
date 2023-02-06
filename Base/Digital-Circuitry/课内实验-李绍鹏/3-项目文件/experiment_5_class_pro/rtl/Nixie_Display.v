module Nixie_Display(cp,LED_bit,LED_SEG);

input cp;
output [7:0]LED_bit;
output [7:0]LED_SEG;
wire clk_100hz,clk_400hz;
wire [2:0]scan_cnt;
wire [3:0]Data_BCD;

Divider			U1(.clk(cp),.fout1(clk_100hz),.fout2(clk_400hz));
Count_10			U2(.fclk(clk_400hz),.cnt(scan_cnt));
Count_6			
Decoder_3_8		U3(.val(scan_cnt),.Pout(LED_bit));
Selector_8_1	U4(.SEL(scan_cnt),.N(Data_BCD));
BCD_7_SEG		U5(.BCD(Data_BCD),.SEG(LED_SEG));

endmodule