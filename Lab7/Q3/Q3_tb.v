`timescale 1ns/1ns
`include "Q3.v"
module Q2_tb();
reg [15:0]inp;
reg [3:0]s;
wire y;
Q3 q3(inp,s,y);
integer i;
initial
begin 
		$dumpfile("q3.vcd");
        $dumpvars(0,q3);
        inp = 16'b1010101010101010;
        for(i=0; i<16; i=i+1) 
         begin
            s = i[3:0]; #20; 
            end
        $display("Complete");
end

endmodule