`timescale 1ns/1ns
`include "halfadder.v"
module ha_tb();
reg [1:0]inp;
wire s, c;
ha h(inp,s,c);
integer i;
initial
begin 
		$dumpfile("ha.vcd");
        $dumpvars(0,h);
        for(i=0; i<4; i=i+1) 
         begin
            inp = i[1:0]; #20; 
            end
        $display("Complete");
end

endmodule