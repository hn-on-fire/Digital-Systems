`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg a,x,y,z;
wire lhs1,lhs2,lhs3,rhs1,rhs2,rhs3;
Q1 q(a,x,y,z, lhs1, lhs2, lhs3, rhs1, rhs2, rhs3);
initial
begin
        $dumpfile("Q1_tb.vcd");
        $dumpvars(0,Q1_tb);
        a = 0; x = 0; y =0; z = 0;
        #20;
        a = 0; x = 0; y =0; z = 1;
        #20;
        a = 0; x = 0; y =1; z = 0;
        #20;
        a = 0; x = 0; y =1; z = 1;
        #20;
        a = 1; x = 1; y =0; z = 0;
        #20;
        a = 1; x = 1; y =0; z = 1;
        #20;
        a = 1; x = 1; y =1; z = 0;
        #20;
        a = 1; x = 1; y =1; z = 1;
        #20;
        $display("Complete");
end

endmodule

