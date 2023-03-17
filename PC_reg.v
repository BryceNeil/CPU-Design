module PC_reg(
input clr, clk, inc, wr,
input [31:0] D,
output reg [31:0]Q
);

initial Q = 0;
always @ (posedge clk)
begin
if(clr)
Q = 0;
else if(wr)
Q = D;
else if (inc)
Q = Q + 1;

end 
endmodule
//PC_register PC(PC_input, Inc_PC, clk, clr, bus_PC_input); 
