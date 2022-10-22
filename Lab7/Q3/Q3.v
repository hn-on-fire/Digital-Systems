`include "mux2to1.v"
`include "mux8to1.v"
module Q3(inp, s, y);
input [15:0]inp;
input [3:0]s;
output y;
wire [1:0]temp;
mux8to1 m1(inp[7:0],s[2:0],temp[0]);
mux8to1 m2(inp[15:8],s[2:0],temp[1]);
mux2to1 m3(temp[1:0],s[3],y);
endmodule