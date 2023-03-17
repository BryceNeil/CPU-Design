//ask joj about signed vars
module sub_new (input [31:0] x, y, output signed [31:0] z);

wire c_out;
wire signed[31:0] y_neg, temp;

neg_new neg_y(.x(y), .y(y_neg));

add_new subtract(.x(x), .y(y_neg), .c_out(c_out), .s(temp));

	assign z = temp;

endmodule