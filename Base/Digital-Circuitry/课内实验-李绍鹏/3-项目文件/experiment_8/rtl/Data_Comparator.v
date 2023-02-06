// @file			Data_Comparator
// @detail		data comparator
// @author		212241803537-zhaoqicheng
// @date			2022-10-16
module Data_Comparator(A,B,AGTB,AEQB,ALTB);

input [7:0] B,A;
output AGTB,AEQB,ALTB;

reg AGTB,AEQB,ALTB;
always@(B,A)
	begin
		if(A<B)
			begin
				AGTB=0;
				AEQB=0;
				ALTB=1;
			end
		else if(A>B)
			begin
				AGTB=1;
				AEQB=0;
				ALTB=0;
			end
		else
			begin
				AGTB=0;
				AEQB=1;
				ALTB=0;
			end
	end

endmodule