`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg [3:0] inp;
wire f,g,h;
wire [15:0]temp;
Q2 q(inp,f,g,h, temp);
integer i;
initial
begin 
		$dumpfile("Q2_tb.vcd");
        $dumpvars(0,Q2_tb);
        for(i=0; i<16; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule