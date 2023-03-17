module add_new (input [31:0] x, y, output reg c_out, output [31:0] s);

//ripple carry adder implementation using full adders
//module fulladder_new (input x, y, c_in, output reg c_out, s);

//generate and ripple full adders
genvar i;
wire [32:0] carry;


assign carry[0] = 1'b0;

generate for (i = 0; i < 32; i = i+1) begin : ripple_carry
wire temp;
wire sum;

		fulladder_new inst (
			.x(x[i]),
			.y(y[i]),
			.c_in(carry[i]),
			.c_out(temp),
			.s(sum)
			);
			
			assign s[i] = sum;
			assign carry[i+1] = temp;
	end		
endgenerate

always @ (*) begin
c_out <= carry[32];

end

endmodule