module mux2to1(inp, s, y);
input [1:0]inp;
input s;
output reg y;
always@(inp,s)
 begin
	if(s==0)
		y = inp[0];
	if(s==1)
		y = inp[1];
 end
endmodule