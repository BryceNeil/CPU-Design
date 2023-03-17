module rotate_right(input[31:0] in, output[31:0] out);
	assign out = {in[0], in[31:1]};
endmodule