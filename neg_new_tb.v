`timescale 1ns / 1ps

module neg_new_tb;


//inputs and outputs
reg [31:0] x;

wire signed [31:0] y;

//instantiate testing module

neg_new neg_test(.x(x), .y(y));


//initial begin blocco

initial begin 
x = 29;
#10
	if (y !== -x) begin
		$display ("Test Failed: Expected %d, but got %d", -x, y); 
		$finish;
	end	
	else begin
		$display("Test passed with answer: %d", y);
		$finish;
	end 
end

endmodule