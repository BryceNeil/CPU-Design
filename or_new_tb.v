`timescale 1ns / 1ps

module or_new_tb;

//inputs and outputs
reg a, b;
wire c; 

//instances
or_new or_test(.x(a), .y(b), .z(c));


initial begin
//assign inputs
		a = 1'b1;
		b = 1'b1;

		#50
		
		b = 1'b0;
		
		#50 
		
		a = 1'b0;
	end


endmodule
