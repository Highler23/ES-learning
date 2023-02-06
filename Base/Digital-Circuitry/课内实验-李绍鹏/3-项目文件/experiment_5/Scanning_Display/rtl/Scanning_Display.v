module Scanning_Display(cp,LED_Bit,LED_SEG);

input cp;
output [3:0]LED_Bit;
output [7:0]LED_SEG;
wire clk_200Hz;
wire [1:0]scan_cnt;
wire [3:0]Date_BCD;

Divider U1(.clk(cp),.fout(clk_200Hz));
Binary_Counter U2(.clk(clk_200Hz),.Q(scan_cnt));
Decode_2_4 U3(.cin(scan_cnt),.cout(LED_Bit));
Selector_4_1 U4(.SEL(scan_cnt),.a(4'd8),.b(4'd7),.c(4'd6),.d(4'd5),.q(Date_BCD));
BCD_Decode U5(.Code(Date_BCD),.SEG(LED_SEG));

endmodule 