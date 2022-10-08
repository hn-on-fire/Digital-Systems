//Wite behavioural verilog code for 8 to 3
module penc8to3(inp,y);
  input [7:0]inp;
  output reg [2:0]y;
  always @(inp)
  begin
        if(inp[7]==1) y=3'b111;
        else if(inp[6]==1) y=3'b110;
        else if(inp[5]==1) y=3'b101;
        else if(inp[4]==1) y=3'b100;
        else if(inp[3]==1) y=3'b011;
        else if(inp[2]==1) y=3'b010;
        else if(inp[1]==1) y=3'b001;
        else
        y=3'b000;
  end
endmodule