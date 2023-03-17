module MDMux (Read, BusMuxOut, MDatain, MDXout);

input wire Read;
input wire [31:0] BusMuxOut, MDatain;
reg [31:0] temp;
output wire [31:0] MDXout;

always @ (Read) begin 

	if (Read == 0) 
		temp = BusMuxOut;
	else	
		temp = MDatain;
		
	end
	
assign MDXout = temp;

endmodule