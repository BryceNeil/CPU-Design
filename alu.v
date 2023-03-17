module alu(input [31:0]y_out, input [31:0]bus_mux_out, input [3:0] ALU_control, output [63:0] z_in);
reg [31:0]A, B;
reg [63:0]C;
reg c_in, c_out;

wire carry;
wire [63:0]mul_temp;
wire [63:0]div_temp;
wire [31:0]add_temp;
wire [31:0]sub_temp;
wire [31:0]shr_temp;
wire shra_temp;
wire [31:0]shl_temp;
wire [31:0]ror_temp;
wire [31:0]rol_temp;
wire and_temp;
wire or_temp;
wire [31:0]neg_temp;
wire not_temp;

// Possible ALU Operations
parameter ADD = 4'b0000, SUB = 4'b0001, MUL = 4'b0010, DIV = 4'b0011, SHR = 4'b0100,
			SHRA = 4'b0101, SHL = 4'b0110, ROR = 4'b0111, ROL = 4'b1000, AND = 4'b1001,
			OR = 4'b1010, NEG = 4'b1011, NOT = 4'b1100;
			
			
			// ------------- functions -------------
			
			// add
			add_new add_component(.x(A), .y(B), .c_out(carry), .s(add_temp));

			
			// sub
			sub_new sub_component(.x(A), .y(B), .z(sub_temp));

			
			// mul
			mul_new mul_component(.multiplicand(A), .multiplier(B), .z(mul_temp));

			
			// div
			//div_new div_component(.q(A), .m(B), .z_hi(div_temp[63:32]), .z_lo(div_temp[31:0]));
			div_new div_component(.a(A), .m(B), .q(div_temp));

			
			// shr
			binary_shift_right shr_component(.in(A), .out(shr_temp));

			
			// shra
			shift_right_arithmetic shra_component(.a(A), .b(B), .result(shra_temp));
			
			
			// shl
			binary_shift_left shl_component(.in(A), .out(shl_temp));

			
			// ror
			rotate_right ror_component(.in(A), .out(ror_temp));

			
			// rol
			rotate_left rol_component(.in(A), .out(rol_temp));
			
			
			// and
			and_new and_component(.x(A), .y(B), .z(and_temp));
			
			
			// or
			or_new or_component(.x(A), .y(B), .z(or_temp));
			
			// neg
			neg_new neg_component(.x(A), .y(neg_temp));

			
			// not
			not_new not_component(.x(A), .y(not_temp));
		
		

always @ (ALU_control) begin
		A = y_out;
		B = bus_mux_out;
	
		case (ALU_control)
	
			ADD : C = add_temp;
		
			SUB : C = sub_temp;
			
			MUL : C = mul_temp;
			
			DIV : C = div_temp;
			
			SHR : C = shr_temp;//A>>1;
			
			SHRA : C = shra_temp; //A>>B;
			
			SHL : C = shl_temp; //A<<1;
			
			ROR : C = ror_temp; //{A[31:1], A[0]};
			
			ROL : C = rol_temp; //{A[0], A[31:1]};
			
			AND : C = and_temp; //A & B;
			
			OR : C = or_temp; //A | B;
			
			NEG : C = neg_temp; //~A + 1'b1;
			
			NOT : C = not_temp; //~A;
			
			//NOR : C = ~(A|B);
			
			//NAND : C = ~(A&B);
			
			//XNOR : C = ~(A^B);
			
			default: C = 32'b0;
	endcase
	
end
	
	assign z_in = C;
	
endmodule
