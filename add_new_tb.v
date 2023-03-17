`timescale 1ns / 1ps

module add_new_tb;

//inputs and outputs

reg [31:0] x, y;
wire c2;
wire [31:0] s;

//add_new (input [31:0] x, y, input c_in, output c_out, output [31:0] s);

//instance
add_new add_test(.x(x), .y(y), .c_out(c2), .s(s));

//initbeg


initial begin
x = 115; 
y = 63;

#10

		if (s !== x + y) begin
		$display ("Test Failed: Expected %d, but got %d", x+y, s); 
		$finish;
		end
		else begin
		$display("Test passed with answer: %d", s);
		$finish;
		end 



end

endmodule

