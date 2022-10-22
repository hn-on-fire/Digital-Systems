`include "mux4to1.v"
module Q2(inp, s, y);
input [15:0]inp;
input [3:0]s;
output y;
wire [3:0]temp;
mux4to1 m1(inp[3:0],s[1:0],temp[0]);
mux4to1 m2(inp[7:4],s[1:0],temp[1]);
mux4to1 m3(inp[11:8],s[1:0],temp[2]);
mux4to1 m4(inp[15:12],s[1:0],temp[3]);
mux4to1 m5(temp[3:0],s[3:2],y);
endmodule
