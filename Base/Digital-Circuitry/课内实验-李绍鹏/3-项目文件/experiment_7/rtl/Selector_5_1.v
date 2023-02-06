module Selector_5_1 (SEL,A0,A1,A2,A3,A4,N);

input SEL;
input [3:0] A0,A1,A2,A3,A4;
output N;
wire [2:0] SEL;
reg [3:0] N;

always@ (SEL)
	begin
		case(SEL)
			3'b000:N=A0;  // 1
			3'b001:N=A1;  // 2
			3'b010:N=A2;  // 3
			3'b011:N=A3;  // 4
			3'b100:N=A4;  // 5
			default:N=A0; // 1
		endcase
	end

endmodule