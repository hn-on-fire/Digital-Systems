module mux8to1(inp, s, y);
input [7:0]inp;
input [2:0]s;
output reg y;
always@(inp,s)
 begin
	case(s)
	 0: y = inp[0];
	 1: y = inp[1];
	 2: y = inp[2];
	 3: y = inp[3];
	 4: y = inp[4];
	 5: y = inp[5];
	 6: y = inp[6];
	 7: y = inp[7];
	 endcase
 end
endmodule