`timescale 1ns/1ns
`include "Ai.v"
module Ai_tb();
reg a,b,c;
wire f1,f2;
Ai Ai(a,b,c,f1,f2);
initial
begin
        $dumpfile("Ai_tb.vcd");
        $dumpvars(0,Ai_tb);
        a = 0; b = 0; c = 0;
        #20;
        a = 0; b = 0; c = 1;
        #20;
	a = 0; b = 1; c = 0;
	#20;
        a = 0; b = 1; c = 1;
        #20;
        a = 1; b = 0; c = 0;
        #20;
        a = 1; b = 0; c = 1;
        #20;
        a = 1; b = 1; c = 0;
	#20;
        a = 1; b = 1; c = 1;
        #20;
        $display(((f1&f2==f1) &(f1&~f2==0) )?"Equivalent":"Not Equivalent");
end

endmodule

