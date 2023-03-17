`timescale 1ns/10ps

module div_new(input wire [31:0] a, m, output reg [63:0] q);

reg [31:0] temp;
integer count;

always @ (a or m) begin	
	q = {32'b0, a};
	
	for (count = 0; count < 32; count = count + 1) begin
		q = q << 1;
		temp =  q[63:32];
		q[63:32] = q[63:32] - m;
		
		if (q[63] == 1) begin
			q[0] = 0;
			q[63:32] = temp;
		end else begin
			q[0] = 1;
		end
	end
end
endmodule
























//
//
//
////module div_new (input [31:0] q, m, output [31:0] z_hi, z_lo);
//
////reg[63:0] aq;
//
////integer i;
//
////always @ (*) begin 
//
//// non restoring algorithm
//
////aq [63:32] = 32'b0; 
////aq [31:0] = q;
////step 1: Do the following n times:
//
//// what is N times # bits
//	//for (i=0; i < 32; i = i + 1) begin
//	//Shift A and Q left one binary position; 
//	//	aq = aq << 1;
//	
//	//If A ≥ 0, subtract M from A; otherwise,//add M to A.
//		//if (aq[63] == 0) aq[63:32] = aq[63:32]- m;
//		//else aq[63:32] = aq[63:32]+ m;
//
////Now, If A ≥ 0, set q 0 to 1; otherwise, set q 0 to 0.
//		if (aq[63] == 0)
//			aq[0] = 1;
//		else 
//			aq[0] = 0;
////Step 2: If A < 0, add M to A (this is to make sure that the positive remainder is in A
////at the end of n cycles).
//		if (aq[63:32] < 0)
//			aq[63:32] = aq[63:32] + m;
////	end
////end
//// z low is the answer teh value, and z hi is the remainder
//assign z_lo = aq[31:0];
//assign z_hi = aq[63:32];
//
//endmodule
//
//
//
//
//
//
//
//
////module div_new (input [31:0] q, m, output [31:0] z_hi, z_lo);
//
////reg[63:0] aq;
//
////integer i;
//
////always @ (*) begin 
//
//// non restoring algorithm
//
////aq [63:32] = 32'b0; 
////aq [31:0] = q;
////step 1: Do the following n times:
//
//// what is N times # bits
//	//for (i=0; i < 32; i = i + 1) begin
//	//Shift A and Q left one binary position; 
//	//	aq = aq << 1;
//	
//	//If A ≥ 0, subtract M from A; otherwise,//add M to A.
//		//if (aq[63] == 0) aq[63:32] = aq[63:32]- m;
//		//else aq[63:32] = aq[63:32]+ m;
//
////Now, If A ≥ 0, set q 0 to 1; otherwise, set q 0 to 0.
//		//if (aq[63] == 0)
//		//	aq[0] = 1;
//		//else 
//		//	aq[0] = 0;
////Step 2: If A < 0, add M to A (this is to make sure that the positive remainder is in A
////at the end of n cycles).
//		//if (aq[63:32] < 0)
//	//		aq[63:32] = aq[63:32] + m;
////	end
////end
//// z low is the answer teh value, and z hi is the remainder
////assign z_lo = aq[31:0];
////assign z_hi = aq[63:32];
//
////endmodule