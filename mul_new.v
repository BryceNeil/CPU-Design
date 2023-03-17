`timescale 1ns/10ps

module mul_new (input signed[31:0] multiplicand, multiplier, output reg signed[63:0] result);
	
	reg [2:0] bG [15:0];
	reg signed [32:0] cA;
	reg signed [63:0] sCA;
	
	wire [31:0] new_multiplicand;
	neg_new neg_operation(multiplicand, new_multiplicand);
	integer i, j;

	always @ (*) begin
		result = 0;
		
		for(i = 1; i < 16; i = i + 1)begin
			if (i == 0) begin
				bG[i] = {multiplier[i+1], multiplier[i], 1'b0};
			end else begin
				bG[i] = {multiplier[(i*2)+1], multiplier[(i*2)], multiplier[(i*2)-1]};
			end
		end
			
		for(j = 0; j < 16; j = j + 1)begin
			case(bG[j])
				3'b001:
					cA = {multiplicand[31], multiplicand[31:0]};
				3'b010:
					cA = {multiplicand[31], multiplicand[31:0]};
				3'b011:
					cA = {multiplicand[31:0], 1'b0};
				3'b100:
					cA = {new_multiplicand[31:0], 1'b0};
				3'b101:
					cA = {new_multiplicand[31], new_multiplicand[31:0]};
				3'b110:
					cA = {new_multiplicand[31], new_multiplicand[31:0]};
				3'b111:
					cA = 0;
				default:
					cA = 0;
			endcase
			sCA = cA << (j*2);
			result = result +sCA;
		end
	end
endmodule

