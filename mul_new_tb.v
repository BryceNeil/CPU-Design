//mul_tb

`timescale 1ns / 1ps

module mul_new_tb;

//i/o
reg [31:0] m1, m2;

wire [63:0] z;


//instantiate module for testin
mul_new mul_test(.multiplicand(m1), .multiplier(m2), .result(z));

//ib blockus
initial begin
m1 = 5;
m2 = 12;

//waits 10ns for stable output
#10

	if (z !== m1 * m2) begin
		$display ("Test Failed: Expected %d, but got %d", m1*m2, z); 
		$finish;
	end
	else begin
		$display("Test passed with answer: %d", z);
		$finish;
	end 


end 


endmodule