`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg [3:0]inp;
reg [1:0]s;
wire y;
Q1 q1(inp,s,y);
integer i;
initial
begin 
		$dumpfile("q1.vcd");
        $dumpvars(0,q1);
        inp = 4'b1010;
        for(i=0; i<4; i=i+1) 
         begin
            s = i[1:0]; #20; 
            end
        $display("Complete");
end

endmodule