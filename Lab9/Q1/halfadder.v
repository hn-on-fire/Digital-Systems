module ha(inp,s,c);
input [1:0]inp;
output  s,c;
assign s = inp[1]^inp[0];
assign c = inp[1]&inp[0];
endmodule