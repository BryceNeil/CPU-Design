module register_64_bits(
input clk, clr, Z_input, Z_Lo_select, Z_Hi_select, 
input [63:0] D,
output reg [31:0]Z_Hi_Data_Output, Z_Lo_Data_Output


);
	always @(posedge clk)
		if(clr) begin
			Z_Hi_Data_Output = 32'h00000000;
			Z_Lo_Data_Output = 32'h00000000;
		end
		
		else if(Z_input) begin
			if(Z_Lo_select)
				Z_Lo_Data_Output = D[31:0];
				
			else if(Z_Hi_select)
				Z_Hi_Data_Output = D[63:32];
		end
endmodule