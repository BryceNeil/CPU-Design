module neg_new (input [31:0] x, output signed [31:0] y);

wire [31:0] temp1;
wire carry;
wire signed [31:0] temp2;
genvar i;

	not_new negateBits(.x(x[0]), .y(temp1[0]));

	generate	
		for (i = 1; i < 32; i = i+1) begin : negate
			
			not_new negateBits(.x(x[i]), .y(temp1[i]));
	
		end 

	endgenerate

add_new add1(.x(temp1),.y(32'b1), .c_out(carry), .s(temp2));

assign y = temp2;

endmodule