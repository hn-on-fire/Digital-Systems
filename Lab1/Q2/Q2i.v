module Q2i(a,b,c,d,g,f);
	input a,b,c,d;
	output g,f;
	nand(h,a,b);
	nor(g,b,c,d);
	xor(f,c,d,h);
endmodule
