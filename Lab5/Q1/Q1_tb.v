`timescale 1ns/1ns
`include "dec3to8.v"
module Q1_tb();
reg a,b,c;
wire [7:0]y;
dec3to8 q1(a, b,c,y);
initial
begin 
		$dumpfile("q1_tb.vcd");
        $dumpvars(0,Q1_tb);
        a = 0; b = 0;c = 0; 
        #20;
        a = 0; b = 0;c = 1; 
        #20;
        a = 0; b = 1; c = 0;
        #20;
        a = 0; b = 1;c = 1; 
        #20;
        a = 1; b = 0; c = 0;
        #20;
        a = 1; b = 0; c = 1;
        #20;
        a = 1; b = 1; c= 0;
        #20;
        a = 1; b = 1; c = 1;
        #20;
        $display("Complete");
end

endmodule