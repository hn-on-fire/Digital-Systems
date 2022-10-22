module Q4(inp, s, y);
	input [3:0]inp;
	input [1:0]s;
	wire [1:0]temp;
	output y;
	function automatic reg mux2to1;
	input [1:0]i;
	input sel;
	begin
		mux2to1 = i[sel];
		end
	endfunction
	assign temp[0] = mux2to1(inp[1:0],s[0]);
	assign temp[1] = mux2to1(inp[3:2],s[0]);
	assign y =mux2to1(temp[1:0],s[1]);
endmodule