// @file			Code_Decoder
// @detail		Seven segment code decoder
module BCD_7_SEG(BCD,SEG);

input BCD;
output SEG;
wire [3:0] BCD;
reg [7:0] SEG;

always@(BCD)
	begin
		case(BCD)
			4'b0000:SEG=8'b1100_0000;  // 0
			4'b0001:SEG=8'b1111_1001;  // 1
			4'b0010:SEG=8'b1010_0100;  // 2
			4'b0011:SEG=8'b1011_0000;  // 3
			4'b0100:SEG=8'b1001_1001;  // 4
			4'b0101:SEG=8'b1001_0010;  // 5
			4'b0110:SEG=8'b1000_0010;  // 6
			4'b0111:SEG=8'b1111_1000;  // 7
			4'b1000:SEG=8'b1000_0000;  // 8
			4'b1001:SEG=8'b1001_0000;  // 9
			default:SEG=8'b1100_0000;  // 0
		endcase
	end

endmodule