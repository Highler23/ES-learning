module Selector_8_1 (SEL,a,b,c,d,e,f,g,h,Y);

input [7:0] a,b,c,d,e,f,g,h;
input SEL;
output Y;
wire [2:0] SEL;
reg [7:0] Y;

always@ (SEL)
	begin
		case(SEL)
			3'b000:Y=a;
			3'b001:Y=b;
			3'b010:Y=c;
			3'b011:Y=d;
			3'b100:Y=e;
			3'b101:Y=f;
			3'b110:Y=g;
			3'b111:Y=h;
			default:Y=a;
		endcase
	end

endmodule