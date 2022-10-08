//11x+x11+1x1 == 7 6 5 3
 priority encoder
`include "dec3to8.v"
module Q3(inp, y);
input [2:0]inp;
output y;
wire [7:0]temp;
dec3to8 bruh(inp[2],inp[1], inp[0], temp);
assign y = (temp[3]|temp[5]|temp[6]|temp[7]);
endmodule