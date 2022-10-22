module mux4to1(inp, s, y);
input [3:0]inp;
input [1:0]s;
output reg y;
always@(inp,s)
 y = s[1]?s[0]?inp[3]:inp[2]:s[0]?inp[1]:inp[0];
endmodule