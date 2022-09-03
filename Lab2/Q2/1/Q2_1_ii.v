module Q2_1_ii(a,b,c,y,chk);
	input a,b,c;
	output y, chk;
	assign y = ~((a~&b)&(a~&c)&(b~&c));
	assign chk = (a|(b&c))&(b|(c&a));
endmodule