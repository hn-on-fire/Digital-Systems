module Q2_3_ii(x,y,z,a,chk);
	input x,y,z;
	output a, chk;
	nand(h,x,z);
	nand(i,x,x);
	nand(j,z,z);
	nand(k,i,j);
	nand(l,k,h);
	nand(a,l,l);
	assign chk = ((~x|~z)&(x|z));
endmodule