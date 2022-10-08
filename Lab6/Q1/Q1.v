//b'c'd + 	a'b'd + bc

//1001
//0001
//0011
//0110
//1110
//0111
//1111
`include "dec4to16.v"
module Q1(inp, y);
input [3:0]inp;
wire [15:0]temp;
output y;
dec4to16 eh(inp,temp);
assign y = (temp[1]|temp[3]|temp[6]|temp[7]||temp[9]|temp[14]|temp[15]);
endmodule

