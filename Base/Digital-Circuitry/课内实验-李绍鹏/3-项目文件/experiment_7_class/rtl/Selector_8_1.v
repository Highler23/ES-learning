module Selector_8_1 (SEL,num0,num1,num2,num3,num4,num5,num6,num7,N);

input SEL;
input [3:0] num0,num1,num2,num3,num4,num5,num6,num7;
output N;
wire [2:0] SEL;
reg [3:0] N;

always@ (SEL)
	begin
		case(SEL)
			3'b000:N=num0;  // 1
			3'b001:N=num1;  // 2
			3'b010:N=num2;  // 3
			3'b011:N=num3;  // 4
			3'b100:N=num4;  // 5
			3'b101:N=num5;  // 6
			3'b110:N=num6;  // 7
			3'b111:N=num7;  // 8
			default:N=num1; // 1
		endcase
	end

endmodule