module rotate_left(input[31:0] in, output[31:0] out);
	assign out = {in[30:0], in[31]};
endmodule