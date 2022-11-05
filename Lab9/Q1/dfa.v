`include "halfadder.v"
module dfa(inp, s,c);
input [2:0]inp;
output s,c;
wire t1, t2, t3;
ha h1(inp[1:0], t1, t2);
ha h2({inp[2], t1}, s,t3);
assign c = t2|t3;
endmodule