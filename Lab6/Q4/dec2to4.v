module dec2to4(en,a,b,y);
	input en,a,b;
	output reg [3:0]y;
   always @(en,a,b)
     begin
       if(en==1)
         begin
           if(a==0 & b==0) y=4'b0001;
           else if(a==0 & b==1) y=4'b0010;
           else if(a==1 & b==0) y=4'b0100;
           else if(a==1 & b==1) y=4'b1000;
         end
       else
        y=4'b0000;
     end
endmodule