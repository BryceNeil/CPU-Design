`timescale 1ns/10ps

module shift_right_arithmetic(input wire [31:0] a, b, output wire [31:0] result);

	assign result = $signed(a) >>> b;

endmodule