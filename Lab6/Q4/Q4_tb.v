`timescale 1ns/1ns
`include "Q4.v"
module Q4_tb();
reg [2:0] inp;
reg [7:0]eh;
wire y;
Q4 q(inp,eh, y);
integer i;
initial
begin 
		$dumpfile("Q4_tb.vcd");
        $dumpvars(0,Q4_tb);
        eh = 8'b11010001;
        for(i=0; i<8; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule