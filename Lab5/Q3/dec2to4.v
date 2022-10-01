module dec2to4(en,inp,y);
	input en;
  input [1:0]inp;
	output reg [3:0]y;
   always @(en,inp)
     begin
       if(en==1)
        case(inp)
         0: y=4'b1110;
         1: y=4'b1101;
         2: y=4'b1011;
         3: y=4'b0111;
         endcase
       else
        y=4'b1111;
     end
endmodule