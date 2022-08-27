`timescale 1ns/1ns
`include "Q1i.v"
module Q1i_tb();
reg a,b,c,d;
wire f;
Q1i q1i(a,b,c,d,f);
initial
begin
	$dumpfile("qi1_tb.vcd");
	$dumpvars(0,Q1i_tb);
	a = 0; b = 0; c = 0; d = 0;
	#20;
	a = 0; b = 0; c = 0; d = 1;
	#20;
	a = 0; b = 0; c = 1; d = 0;
	#20;
	a = 0; b = 0; c = 1; d = 1;
	#20;
	a = 0; b = 1; c = 0; d = 0;
	#20;
	a = 0; b = 1; c = 0; d = 1;
	#20;
	a = 0; b = 1; c = 1; d = 0;
	#20;
	a = 0; b = 1; c = 1; d = 1;
	#20;
	a = 1; b = 0; c = 0; d = 0;
	#20;
	a = 1; b = 0; c = 0; d = 1;
	#20;
	a = 1; b = 0; c = 1; d = 0;
	#20;
	a = 1; b = 0; c = 1; d = 1;
	#20;
	a = 1; b = 1; c = 0; d = 0;
	#20;
	a = 1; b = 1; c = 0; d = 1;
	#20;
	a = 1; b = 1; c = 1; d = 0;
	#20;
	a = 1; b = 1; c = 1; d = 1;
	#20;
	$display("Complete");
end

endmodule
