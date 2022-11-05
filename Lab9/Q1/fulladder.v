module ha(inp,s,c);
input [2:0]inp;
output s,c;
assign s = (~inp[0]&~inp[1]&inp[2]) |(~inp[0]&inp[1]&~inp[2])|(inp[0]&~inp[1]&~inp[2]) | (inp[0]&inp[1]&inp[2]);
assign c = (inp[0]&inp[1])|(inp[0]&inp[2])+(inp[2]&inp[1]);
endmodule