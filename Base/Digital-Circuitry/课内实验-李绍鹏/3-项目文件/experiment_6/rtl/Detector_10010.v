/**
 * @file		10010_sequence_detector
 * @brief		标准的状态机，由一个时序电路和两个组合电路组成
 */
module Detector_10010 (clk,reset,x,z); 

input clk,reset;
input x;
output z;
reg z;
reg [4:0] current_state,next_state;
// 参数声明
parameter [4:0] IDLE = 5'b00000,
				A = 5'b00001,
				B = 5'b00010,
				C = 5'b00100,
				D = 5'b01000,
				E = 5'b10000;
/*-----------------------------------------------------
	@file		状态寄存
	@brief		时序逻辑电路
	@details	posedge clk or posedge reset
-----------------------------------------------------*/
always @(posedge clk or posedge reset)
	begin
		if (reset)
			begin
				current_state = IDLE;
			end
		else
			begin
				current_state = next_state;
			end
	end
/*-----------------------------------------------------
	@file		next_state
	@brief		组合逻辑电路
	@details	current_state or x
-----------------------------------------------------*/
always @(current_state or x)
	begin
		case (current_state)
			IDLE:
				begin
					if (x == 1)
						begin
							next_state = A;
						end
					else
						begin
							next_state = IDLE;
						end
				end
			A:
				begin
					if (x == 0)
						begin
							next_state = B;
						end
					else
						begin
							next_state = A;
						end
				end
			B:
				begin
					if (x == 0)
						begin
							next_state = C;
						end
					else
						begin
							next_state = A;
						end
				end
			C:
				begin
					if (x == 1)
						begin
							next_state = D;
						end
					else
						begin
							next_state = IDLE;
						end
				end
			D:
				begin
					if (x == 0)
						begin
							next_state = E;
						end
					else
						begin
							next_state = A;
						end
				end
			E:
				begin
					if (x == 1)
						begin
							next_state = A;
						end
					else
						begin
							next_state = C;
						end
				end
			default:
				begin
					next_state = IDLE;
				end
		endcase
	end
// 第三段always
// always @(posedge clk or posedge reset)
/*always @(current_state or x)
	begin
		if (reset)
			begin
				z = 1'b0;
			end
		else
			begin
				case (current_state)
					IDLE:z = 0;
					A:z = 0;
					B:z = 0;
					C:z = 0;
					D:z = 0;
					E:z = 1;
					default:z = 0;
				endcase
			end
	end*/
/*-----------------------------------------------------
	@file		输出
	@brief		组合逻辑电路
	@details	current_state or x
-----------------------------------------------------*/
always @(current_state)
	begin
		case (current_state)
			IDLE:z = 0;
			A:z = 0;
			B:z = 0;
			C:z = 0;
			D:z = 0;
			E:z = 1;
			default:z = 0;
		endcase
	end

endmodule