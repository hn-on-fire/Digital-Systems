`timescale 1ns/1ns
`include "Q4.v"
module Q4_tb();
reg [3:0]inp;
reg [1:0]s;
wire y;
Q4 q4(inp,s,y);
integer i;
initial
begin 
		$dumpfile("q4.vcd");
        $dumpvars(0,q4);
        inp = 4'b1010;
        for(i=0; i<4; i=i+1) 
         begin
            s = i[1:0]; #20; 
            end
        $display("Complete");
end

endmodule