module Q2_1_i(a,b,c,y, chk);
	input a,b,c;
	output y, chk;
	assign y = (a&b)|(b&c)|(c&a);
	assign chk = (a|(b&c))&(b|(c&a));
endmodule
