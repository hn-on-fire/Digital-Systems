`timescale 1ns/1ns
`include "Q2_a.v"
module Q2_tb();
reg a,b,c,d;
wire f;
Q2_a q2_a(a,b,c,d,f);
initial
begin 
		$dumpfile("q2_tb.vcd");
        $dumpvars(0,Q2_tb);
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