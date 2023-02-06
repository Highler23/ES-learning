// @file			Number_Selector
// @detail		Number_Selector
// @author		212241803537-zhaoqicheng
// @date			2022-10-28
module Number_Selector(D0,D1,D2,D3,Y,A1,A0);

input D0,D1,D2,D3,A1,A0;
output reg Y;

always@(A1,A0)
begin
  case({A1,A0})
  2'b00:Y=D0;
  2'b01:Y=D1;
  2'b10:Y=D2;
  2'b11:Y=D3;
  default:Y=D0;
  endcase
end

endmodule
