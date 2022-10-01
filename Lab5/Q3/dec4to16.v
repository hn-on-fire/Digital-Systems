`include "dec2to4.v"
module dec4to16(inp,y);
input [3:0]inp;
output [15:0]y;
wire [3:0]w,a;
integer i;
dec2to4 one(1'b1,inp[3:2],w[3:0]);
assign a =~w;
dec2to4 two(a[0],inp[1:0],y[3:0]);
dec2to4 three(a[1],inp[1:0],y[7:4]);
dec2to4 four(a[2],inp[1:0],y[11:8]);
dec2to4 five(a[3],inp[1:0],y[15:12]);
endmodule