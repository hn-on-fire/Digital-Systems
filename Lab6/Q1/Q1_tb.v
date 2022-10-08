`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg [3:0] inp;
wire y;
Q1 q1(inp,y);
integer i;
initial
begin 
		$dumpfile("Q1_tb.vcd");
        $dumpvars(0,Q1_tb);
        for(i=0; i<16; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule