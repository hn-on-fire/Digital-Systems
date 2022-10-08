module dec2to4(en,inp,y);
	input en;
  input [1:0]inp;
	output reg [3:0]y;
   always @(en,inp)
     begin
       if(en==1)
        case(inp)
         0: y=4'b0001;
         1: y=4'b0010;
         2: y=4'b0100;
         3: y=4'b1000;
         endcase
       else
        y=4'b0000;
     end
endmodule