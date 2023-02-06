module divchange(clk,f0,select);

input clk;
input [1:0]select;
output reg f0;
reg [3:0]HZ;
reg [31:0] scan_cnt;

always@(posedge clk)		//256kHZ
	begin
		case(select)
			2'd0:HZ=0;
			2'd1:HZ=1;
			2'd2:HZ=2;
			2'd3:HZ=3;
			default:HZ=0;
		endcase
		if(scan_cnt==HZ)
		begin
			scan_cnt<=0;
			f0<=!f0;
		end
		else 
		begin
			scan_cnt<=scan_cnt+1;
		end
	end

endmodule