`include "dec3to8.v"
module dec4to16(inp,y);
input [3:0]inp;
output [15:0]y;
wire d;
assign d = ~inp[3];
dec3to8 one(d,inp[2:0],y[7:0]);
dec3to8 two(inp[3],inp[2:0],y[15:8]);
endmodule