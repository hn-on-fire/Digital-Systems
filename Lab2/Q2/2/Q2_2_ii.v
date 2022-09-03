module Q2_2_ii(x,y,z,a,chk);
	input x,y,z;
	output a, chk;
	nand(h,z,z);
	nand(i,h,x);
	nand(j,y,y);
	nand(a,i,j);
	assign chk = (y|(x&(~z)));
endmodule