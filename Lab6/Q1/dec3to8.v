module dec3to8(en,inp,y);
input en;
input [2:0]inp;
output reg [7:0]y;
integer i;
always@(en,inp)
	begin
		if(en==1)
			begin
			for(i=0;i<=7;i=i+1)
				begin
					if(inp == i)
					y[i] = 1;
					else
					y[i] =0;
				end
			end
		else y=8'b00000000;
	end
endmodule