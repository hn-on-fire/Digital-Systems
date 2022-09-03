module Q1(a,x,y,z, lhs1,lhs2,lhs3,rhs1,rhs2,rhs3);
	input a,x,y,z;
	output lhs1,lhs2,lhs3,rhs1,rhs2,rhs3;
	assign lhs1 = ~(~a);
	assign rhs1 = a;
	assign lhs2 = x&(y|z);
	assign rhs2 = (x&y)|(x&z);
	assign lhs3 = x|(y&z);
	assign rhs3 = (x|y)&(x|z);
endmodule
