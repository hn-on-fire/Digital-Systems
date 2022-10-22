`include "mux2to1.v"
module Q1(inp, s, y);
input [3:0]inp;
input [1:0]s;
output y;
wire [1:0]temp;
mux2to1 m1(inp[1:0],s[0],temp[0]);
mux2to1 m2(inp[3:2],s[0],temp[1]);
mux2to1 m3(temp[1:0],s[1],y);
endmodule
