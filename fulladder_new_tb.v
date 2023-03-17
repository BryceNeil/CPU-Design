`timescale 1ns / 1ps

module fulladder_new_tb;

//inputs and outputs
//module fulladder_new (input x, y, c_in, output reg c_out, s);

reg x, y, c_in;

wire c_out, s;



fulladder_new fulladder_test(.x(x), .y(y), .c_in(c_in), .c_out(c_out), .s(s));



initial begin
//assign inputs
		x = 1'b0;
		y = 1'b1;
		c_in = 1'b0;
	
		#50
		
		x = 1'b1;
		
		
		#50
		
		
		x = 1;
		
			//$display("Test complete with sum: %b, and carry: %b", s, c_out);
		$finish;
 
	end
endmodule