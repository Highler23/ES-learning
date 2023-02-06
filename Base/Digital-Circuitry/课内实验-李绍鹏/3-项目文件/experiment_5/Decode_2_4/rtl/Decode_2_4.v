module Decode_2_4 (cin,cout);

input cin;
output cout;
wire [1:0] cin;
reg [7:0] cout;

always@(cin)
	begin
		if(cin == 2'b00)
			begin
				cout=8'b1100_0000;
			end
		else if(cin == 2'b01)
			begin
				cout=8'b1111_1001;
			end
		else if(cin == 2'b10)
			begin
				cout=8'b1010_0100;
			end
		else if(cin == 2'b11)
			begin
				cout=8'b1011_0000;
			end
	end

endmodule
