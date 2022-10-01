`timescale 1ns/1ns
`include "dec2to4.v"
module dec2to4_tb();
reg [1:0] inp;
wire [3:0]y;
dec2to4 q1(1'b1,inp,y);
integer i;
initial
begin 
		$dumpfile("dec2to4_tb.vcd");
        $dumpvars(0,dec2to4_tb);
        for(i=0; i<=3; i=i+1) 
         begin
            inp = i; #20; 
            end
        $display("Complete");
end

endmodule