// 设计一个十进制数计数器并在数码管上轮流循环显示
// @file		Digit_Nixie_Counter
// @author	212241803537 zhaoqicheng
module Digit_Nixie_Counter(clk,dout,cout);

// div_1HZ
input clk;
output dout;
output [7:0]cout ;
// 
reg [25:0]Q;
reg fout;
reg  [3:0] count;
reg [7:0] dout;
assign cout=8'b0111_1111;

/**
 * @brief		div_1HZ
 * @parameter	clk
 */
always@(posedge clk)
	begin
		if(Q==49_999_999)
			begin
				Q<=0;
				fout=1;
			end
		else
			begin
				Q<=Q+1;
				fout=0;
			end
	end

/**
 * @brief		Nixie
 * @parameter	fout
 */
always@(posedge fout)
	begin
		case(count)
			4'd0:
			dout=8'b1100_0000;
			4'd1:
			dout=8'b1111_1001;
			4'd2:
			dout=8'b1010_0100;
			4'd3:
			dout=8'b1011_0000;
			4'd4:
			dout=8'b1001_1001;
			4'd5:
			dout=8'b1001_0010;
			4'd6:
			dout=8'b1000_0010;
			4'd7:
			dout=8'b1111_1000;
			4'd8:
			dout=8'b1000_0000;
			4'd9:
			dout=8'b1001_0000;
			default:dout=8'b1111_1111;
		endcase
				count<=0;
		if(count==9)
			begin
				count<=0;
			end
		else
			begin
				count<=count+1;
				case(count)
					4'd0:
					dout=8'b1100_0000;
					4'd1:
					dout=8'b1111_1001;
					4'd2:
					dout=8'b1010_0100;
					4'd3:
					dout=8'b1011_0000;
					4'd4:
					dout=8'b1001_1001;
					4'd5:
					dout=8'b1001_0010;
					4'd6:
					dout=8'b1000_0010;
					4'd7:
					dout=8'b1111_1000;
					4'd8:
					dout=8'b1000_0000;
					4'd9:
					dout=8'b1001_0000;
					default:dout=8'b1111_1111;
				endcase
			end
	end 

endmodule
