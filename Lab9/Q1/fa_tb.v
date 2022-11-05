`timescale 1ns/1ns
`include "fulladder.v"
module ha_tb();
reg [2:0]inp;
wire s, c;
ha h(inp,s,c);
integer i;
initial
begin 
		$dumpfile("fa.vcd");
        $dumpvars(0,h);
        for(i=0; i<7; i=i+1) 
         begin
            inp = i[2:0]; #20; 
            end
        $display("Complete");
end

endmodule