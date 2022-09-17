module Q2(a,b,c,d,f);
	input a,b,c,d;
	output f;
	//assign f = ~((~a~|~b)|(~b~|d)|(~c~|~d));
	nor(na,a,a);
	nor(nb,b,b);
	nor(nc,c,c);
	nor(nd,d,d);
	nor(f1,na,nb);
	nor(f2, nb, d);
	nor(f3, nc,nd);
	nor(f,f1,f2,f3);
endmodule