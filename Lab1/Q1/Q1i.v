module Q1i(a,b,c,d,f);
	input a,b,c,d;
	output f;
	and(g,a,b);
	and(h,a,b);
	or(i,g,c);
	or(j,h,c);
	not(k,i);
	and(l,k,d);
	or(m,j,d);
	and(f,l,m);
endmodule
