`timescale 1ns/10ps

module and_new (input wire [31:0] x, y, output wire [31:0] z);

	genvar i;
	generate
		for (i = 0; i < 32; i = i + 1) begin : gen_and
			assign z[i] = (x[i]) & (y[i]);
		end
	endgenerate
 endmodule