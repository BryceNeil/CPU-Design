`timescale 1ns / 1ps

module sub_new_tb;

//inputs and outputs
reg [31:0] x, y; 

wire signed [31:0] z;

//instantiate module for testing

sub_new sub_test(.x(x), .y(y), .z(z));


//initial begin block where we do da testin

initial begin
x = 55;
y = 555;

#10


		if (z !== x-y) begin
		$display ("Test Failed: Expected %d, but got %d", x-y, z); 
		$finish;
		end
		else begin
		$display("Test passed with answer: %d", z);
		$finish;
		end 



end 

endmodule