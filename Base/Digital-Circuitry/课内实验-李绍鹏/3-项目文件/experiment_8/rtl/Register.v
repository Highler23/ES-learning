module Register (EN,set,width);

input EN;
input [7:0]width;
output [7:0]set;
reg [7:0]set;

always@(posedge EN)
	begin
		set = width;
	end

endmodule