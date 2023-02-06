// @file			Wire_Decoder
// @detail		3-wire 8-wire decoder
// @author		212241803537-zhaoqicheng
// @date			2022-10-16
module Decoder_3_8 (val,Pout);

input [2:0] val;
output Pout;  // nixie_segment_location

reg [7:0] Pout;

always@(val)
	begin
		if(val == 3'b000)
			Pout=8'b1111_1110;
		else if(val == 3'b001)
			Pout=8'b1111_1101;
		else if(val == 3'b010)
			Pout=8'b1111_1011;
		else if(val == 3'b011)
			Pout=8'b1111_0111;
		else if(val == 3'b100)
			Pout=8'b1110_1111;
		else if(val == 3'b101)
			Pout=8'b1101_1111;
		else if(val == 3'b110)
			Pout=8'b1011_1111;
		else if(val == 3'b111)
			Pout=8'b0111_1111;
	end

endmodule