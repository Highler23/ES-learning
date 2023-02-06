module Register(EN,Q,D,CLR);
input  EN,CLR;
input  [7:0] D;
output  reg [7:0] Q;

always@(posedge EN)
begin 
	Q<=D;
end 

endmodule
