module Q1 (a,b,c,d,f);
	input a,b,c,d;
	output f;
	//assign f = ~((~a~&~c)&(~a~&d)&(~c~&b)&(b~&d));
	nand(na,a,a);
	nand(nb,b,b);
	nand(nc,c,c);
	nand(f1,na,nc);
	nand(f2, na,d);
	nand(f3, nc,b);
	nand(f4,b,d);
	nand(f,f1,f2,f3,f4);
endmodule