`timescale 1ns/1ns
`include "dec3to8.v"
module dec3to8_tb();
reg en;
reg [2:0]inp;
wire [7:0]y;
dec3to8 d(en,inp,y);
initial
begin 
		$dumpfile("dec3to8_tb.vcd");
        $dumpvars(0,dec3to8_tb);
        en=1;
        inp[2] = 0; inp[1] = 0;inp[0] = 0; 
        #20;
        inp[2] = 0; inp[1] = 0;inp[0] = 1; 
        #20;
        inp[2] = 0; inp[1] = 1; inp[0] = 0;
        #20;
        inp[2] = 0; inp[1] = 1;inp[0] = 1; 
        #20;
        inp[2] = 1; inp[1] = 0; inp[0] = 0;
        #20;
        inp[2] = 1; inp[1] = 0; inp[0] = 1;
        #20;
        inp[2] = 1; inp[1] = 1; inp[0] = 0;
        #20;
        inp[2] = 1; inp[1] = 1; inp[0] = 1;
        #20;
        $display("Complete");
end

endmodule