module Q2_3_i(x,y,z,a,chk);
	input x,y,z;
	output a, chk;
	nor(h,x,x);
	nor(i,z,z);
	nor(j,h,i);
	nor(k,x,y);
	nor(a,j,k);
	assign chk = ((~x|~z)&(x|z));
endmodule