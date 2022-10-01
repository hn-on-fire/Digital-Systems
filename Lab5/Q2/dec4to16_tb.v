`timescale 1ns/1ns
`include "dec4to16.v"
module dec4to16_tb();
reg [3:0] inp;
wire [15:0]y;
dec4to16 q1(inp,y);
integer i;
initial
begin 
		$dumpfile("dec4to16_tb.vcd");
        $dumpvars(0,dec4to16_tb);
        for(i=0; i<16; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule