module Time_Counter (clk,control,reset,num1,num2,num3,num4,num5);

input clk;
input control,reset;
output num1,num2,num3,num4,num5;
reg [3:0] num1,num2,num3,num4,num5;

always@ (posedge clk)
	begin
		if (reset)
			begin
				num1 = 0;
				num2 = 0;
				num3 = 0;
				num4 = 0;
				num5 = 0;
			end
		if (control && ~reset)
			begin
				if (num1 == 9)
					begin
						num1 = 0;
						num2 = num2 + 1;
					end
				else if (num2 == 9)
					begin
						num2 = 0;
						num3 = num3 + 1;
					end
				else if (num3 == 9)
					begin
						num3 = 0;
						num4 = num4 + 1;
					end
				else if (num4 == 9)
					begin
						num4 = 0;
						num5 = num5 + 1;
					end
				else if (num1 == 9 && num2 == 9 && num3 == 9 && num4 == 9 && num5 == 9)
					begin
						num1 = 0;
						num2 = 0;
						num3 = 0;
						num4 = 0;
						num5 = 0;
					end
				else
					begin
						num1 = num1 + 1;
					end
			end
	end

endmodule