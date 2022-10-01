`include "dec2to4.v"
module dec3to8(a,b,c,y);
input a,b,c;
wire d;
output  [7:0]y;
assign d=~a;
dec2to4 one(d,b,c,y[3:0]);
dec2to4 two(a,b,c,y[7:4]);
endmodule