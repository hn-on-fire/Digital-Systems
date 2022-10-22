`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg [15:0]inp;
reg [3:0]s;
wire y;
Q2 q2(inp,s,y);
integer i;
initial
begin 
		$dumpfile("q2.vcd");
        $dumpvars(0,q2);
        inp = 16'b1010101010101010;
        for(i=0; i<16; i=i+1) 
         begin
            s = i[3:0]; #20; 
            end
        $display("Complete");
end

endmodule