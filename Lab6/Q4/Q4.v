`include "dec3to8.v"
module Q4(s,i,y);
input [2:0]s;
input [7:0]i;
wire [7:0] temp;
output reg y;
dec3to8 um(s[2],s[1],s[0], temp);
always @(i)
begin 
if(temp[s]!=0)
assign y = 1'b1;
else 
assign y =1'b0;
end
endmodule