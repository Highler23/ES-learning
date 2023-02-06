// @file			Code_Decoder
// @detail		Seven segment code decoder
// @author		212241803537-zhaoqicheng
// @date			2022-10-29
module BCD_7_Seg(BCD,SEG);

input BCD;
output SEG;
wire [3:0] BCD;
reg [7:0] SEG;

always@(BCD)
	begin
		case(BCD)
			4'd0:SEG=8'b1111_1001;
			4'd1:SEG=8'b1010_0100;
			4'd2:SEG=8'b1011_0000;
			4'd3:SEG=8'b1001_1001;
			4'd4:SEG=8'b1001_0010;
			4'd5:SEG=8'b1000_0010;
			4'd6:SEG=8'b1111_1000;
			4'd7:SEG=8'b1000_0000;
			default:SEG=8'b1100_0000;
		endcase
	end

endmodule