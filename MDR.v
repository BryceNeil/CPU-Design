module MDR (MDXout, clr, clk, MDRin, MDRout);

input wire [31:0] MDXout;
input wire clr, clk, MDRin;
reg [31:0] temp;

output wire [31:0] MDRout;

always @(posedge clk) 
begin
	if (clr == 1)
		temp <= 0;
	else if(MDRin == 1) 
		temp <= MDXout;
	end

	assign MDRout = temp;
	
endmodule

