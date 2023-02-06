// @file			Wire_Decoder
// @detail		3-wire 8-wire decoder
// @author		212241803537-zhaoqicheng
// @date			2022-10-16
module Decoder_3_8 (B,F);

input [2:0] B;
output F;

reg [7:0] F;

always@( B )
	begin
		if( B == 3'b000)
			F=8'b1111_1110;
		else if( B == 3'b001)
			F=8'b1111_1101;
		else if( B == 3'b010)
			F=8'b1111_1011;
		else if(B == 3'b011)
			F=8'b1111_0111;
		else if( B == 3'b100)
			F=8'b1110_1111;
		else if( B == 3'b101)
			F=8'b1101_1111;
		else if( B == 3'b110)
			F=8'b1011_1111;
		else if( B == 3'b111)
			F=8'b0111_1111;
	end

endmodule