module Q2_b(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign f = (~a|b|~d)&(~a|b|~c)&(a|~c|d)&(~b|c|d);
endmodule