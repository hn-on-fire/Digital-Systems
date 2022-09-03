module Q2_2_i(x,y,z,a,chk);
	input x,y,z;
	output a, chk;
	assign a = (((x~|x)~|z)~|y)~|(((x~|x)~|z)~|y);
	assign chk = (y|(x&(~z)));
endmodule