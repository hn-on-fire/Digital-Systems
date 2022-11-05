`timescale 1ns/1ns
`include "foura.v"
module foura_tb();
reg [3:0]a;
reg [3:0]b;
wire  [4:0]c;
foura h(a,b,c);
integer i;
initial
begin 
		$dumpfile("foura.vcd");
        $dumpvars(0,h);
         a = 4'b0101;
         b = 4'b1010;
        $display("Complete");
end

endmodule