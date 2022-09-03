`timescale 1ns/1ns
`include "Q2_3_ii.v"
module Q2_3_ii_tb();
reg x,y,z;
wire a,chk;
Q2_3_ii q2_3_ii(x,y,z,a,chk);
initial
begin
        $dumpfile("q2_3_ii.vcd");
	$dumpvars(0,Q2_3_ii_tb);
        x = 0; y = 0; z = 0;
        #20;
        x = 0; y = 0; z = 0; 
        #20;
        x = 0; y = 0; z = 1; 
        #20;
        x = 0; y = 0; z = 1; 
        #20;
        x = 0; y = 1; z = 0; 
        #20;
        x = 0; y = 1; z = 0; 
        #20;
        x = 0; y = 1; z = 1; 
        #20;
        x = 1; y = 1; z = 1; 
        #20;
        $display("Complete");
end

endmodule