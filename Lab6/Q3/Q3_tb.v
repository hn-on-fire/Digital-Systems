`timescale 1ns/1ns
`include "Q3.v"
module Q3_tb();
reg [2:0] inp;
wire y;
Q3 q(inp,y);
integer i;
initial
begin 
		$dumpfile("Q3_tb.vcd");
        $dumpvars(0,Q3_tb);
        for(i=0; i<8; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule