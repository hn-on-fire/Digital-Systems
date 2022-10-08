//F = 101x + 0x11 + x110  == 10 11 3 7 6 14
//G = 1x10 + 001x == 10 14 2 3
//H = 000x + 111x + 0x11 ==  0 1 14 15 3 7
`include "dec4to16.v"
module Q2(inp, f, g, h, temp);
input [3:0]inp;
output [15:0]temp;
output f,g,h;
dec4to16 why(inp, temp);
assign f = (temp[10]|temp[11]|temp[3]|temp[7]|temp[6]|temp[14] );
assign g = (temp[2]|temp[3]|temp[10]|temp[14]);	
assign h = (temp[0]|temp[1]|temp[3]|temp[7]|temp[14]|temp[15]);
endmodule
