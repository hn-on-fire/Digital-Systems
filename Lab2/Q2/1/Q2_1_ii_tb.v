`timescale 1ns/1ns
`include "Q2_1_ii.v"
module Q2_1_ii_tb();
reg a,b,c;
wire y,chk;
Q2_1_ii q2_1_ii(a,b,c,y,chk);
initial
begin
        $dumpfile("q2_1_ii.vcd");
	$dumpvars(0,Q2_1_ii_tb);
        a = 0; b = 0; c = 0;
        #20;
        a = 0; b = 0; c = 0; 
        #20;
        a = 0; b = 0; c = 1; 
        #20;
        a = 0; b = 0; c = 1; 
        #20;
        a = 0; b = 1; c = 0; 
        #20;
        a = 0; b = 1; c = 0; 
        #20;
        a = 0; b = 1; c = 1; 
        #20;
        a = 1; b = 1; c = 1; 
        #20;
        $display("Complete");
end

endmodule