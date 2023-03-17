module register (BusMuxOut, clr, clk, Rin, BusMuxIn_R);
	input	wire [31:0] 	BusMuxOut;
	input wire clr, clk, Rin;
	output reg [31:0]	BusMuxIn_R;

always @(posedge clk) 
begin
	if (clr == 1)
		BusMuxIn_R <= 0;
	else if(Rin == 1) 
		BusMuxIn_R <= BusMuxOut;
	end

endmodule
