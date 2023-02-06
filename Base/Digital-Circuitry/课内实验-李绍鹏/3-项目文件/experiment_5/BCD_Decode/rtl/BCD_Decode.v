/**
 * @brief		BCD_7 segment code decoder
 * @parameter	Code
 * @parameter	SEG
 * @parameter	Cout
 */
module BCD_Decode(Code,SEG,Cout);

input Code;
output SEG,Cout;
wire [3:0] Code;
reg [7:0]SEG;
wire [7:0]Cout;

assign Cout=8'b1111_1110;  // choose 0

always@(Code)
	begin
		case (Code)
			4'd0:SEG=8'b1100_0000;
			4'd1:SEG=8'b1111_1001;
			4'd2:SEG=8'b1010_0100;
			4'd3:SEG=8'b1011_0000;
			4'd4:SEG=8'b1001_1001;
			4'd5:SEG=8'b1001_0010;
			4'd6:SEG=8'b1000_0010;
			4'd7:SEG=8'b1111_1000;
			4'd8:SEG=8'b1000_0000;
			4'd9:SEG=8'b1001_0000;
			4'd10:SEG=8'b1000_1000;
			4'd11:SEG=8'b1000_0000;
			4'd12:SEG=8'b1100_0110;
			4'd13:SEG=8'b1100_0000;
			4'd14:SEG=8'b1000_0110;
			4'd15:SEG=8'b1000_1110;
			default:SEG=8'b1111_1111;
		endcase
	end

endmodule
