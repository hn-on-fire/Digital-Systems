`timescale 1ns/1ns
`include "Q2ii.v"
module Q2ii_tb();
reg a,b,c,d;
wire f;
Q2ii q2ii(a,b,c,d,g,f);
initial
begin
        $dumpfile("q2ii_tb.vcd");
        $dumpvars(0,Q2ii_tb);
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

