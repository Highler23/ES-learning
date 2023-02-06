module COMPARE(A,B,AGTB,ALTB,AEQB);

input [7:0] B,A;
output reg AGTB,ALTB,AEQB;

always @(A,B)
	begin 
		if(A>B)
			begin
				AGTB=1;
				ALTB=0;
				AEQB=0;
			end
		else if(A<B)
			begin
				AGTB=0;
				ALTB=1;
				AEQB=0;
			end
		else 
			begin
				AGTB=0;
				ALTB=0;
				AEQB=1;
			end
	end

endmodule