`timescale 1ns / 1ps

module not_new_tb;

	//input & output
	reg x;
	wire y;

	
	//instance of not_new
	not_new not_test(.x(x), .y(y));


	initial begin 
		//initialize input
		x <= 1'b0;
		//wait ten ns for stable output
		#50
		
		x <= 1'b0;
	end
endmodule