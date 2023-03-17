`timescale 1ns / 1ps
module and_new_tb; 


//inputs and outputs
reg a, b;
wire c; 

//instances
and_new and_component(.x(a), .y(b), .z(c));


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




