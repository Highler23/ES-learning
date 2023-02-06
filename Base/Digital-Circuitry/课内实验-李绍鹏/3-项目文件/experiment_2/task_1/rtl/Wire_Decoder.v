// @file			Wire_Decoder
// @detail		3-wire 8-wire decoder
// @author		212241803537-zhaoqicheng
// @date			2022-10-16
module Wire_Decoder(I2,I1,I0,a,b,c,d,e,f,g,h);

input I2,I1,I0;
output a,b,c,d,e,f,g,h;

reg a,b,c,d,e,f,g,h;
always@(I2,I1,I0)
begin
if({I2,I1,I0}==3'b000)
   {a,b,c,d,e,f,g,h}=8'b1111_1110;
else if({I2,I1,I0}==3'b001)
   {a,b,c,d,e,f,g,h}=8'b1111_1101;
else if({I2,I1,I0}==3'b010)
   {a,b,c,d,e,f,g,h}=8'b1111_1011;
else if({I2,I1,I0}==3'b011)
   {a,b,c,d,e,f,g,h}=8'b1111_0111;
else if({I2,I1,I0}==3'b100)
   {a,b,c,d,e,f,g,h}=8'b1110_1111;
else if({I2,I1,I0}==3'b101)
   {a,b,c,d,e,f,g,h}=8'b1101_1111;
else if({I2,I1,I0}==3'b110)
   {a,b,c,d,e,f,g,h}=8'b1011_1111;
else if({I2,I1,I0}==3'b111)
   {a,b,c,d,e,f,g,h}=8'b0111_1111;
end

endmodule