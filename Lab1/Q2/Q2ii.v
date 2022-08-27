module Q2ii(a,b,c,d,g,f);
	input a,b,c,d;
	output g,f;
	assign g = ~(b|c|d);
	assign f = (~(a&b))^c^d;
endmodule

