module Q4(a,b,c,d,f);
	input a,b,c,d;
	output f;
	//assign f = 	(~a~|~c)~|~d;
	nor(na,a,a);
	nor(nc,c,c);
	nor(nd,d,d);
	nor(f1, na, nc);
	nor(f,f1,nd);
endmodule