`timescale 1ns/1ns
`include "encoder.v"
module encoder_tb();
reg [7:0] inp;
wire [2:0]y;
penc8to3 q(inp,y);
integer i;
initial
begin 
		$dumpfile("encoder_tb.vcd");
        $dumpvars(0,encoder_tb);
        for(i=0; i<8; i=i+1) 
         begin
         inp =0;
            inp[i] = 1; #20; 
            end
        $display("Complete");
end

endmodule