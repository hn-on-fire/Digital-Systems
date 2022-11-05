`include "../Q1/fulladder.v"
module foura(a,b,c);
input [3:0]a;
input [3:0]b;
output [4:0]c;
wire t1;
assign t1 = 0;
integer i;

always@(a,b)
for (i=0;i<4;i=i+1)
begin
wire [1:0]w = a[i]<<1 + b[i];
ha h1(w,c[i], t1); 
end
assign c[4] = t1;
endmodule