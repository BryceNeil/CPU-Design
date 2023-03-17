`timescale 1ns/10ps 

module alu_tb;
	
	reg clk;
	reg [31:0] in_a;
	reg [31:0] in_b;
	reg [3:0] control_opcode;
	wire [63:0] alu_result;

	alu alu_component (.y_out(in_a), .bus_mux_out(in_b), .ALU_control(control_opcode), .z_in(alu_result));
	
   initial
	begin
		clk = 0;
		forever #10 clk = ~ clk;
	end
	
	initial 
		begin 
			in_a <= 32'b0100;
			in_b <= 32'b0010;
						
			// ADD Check
			control_opcode <= 5'b0000;      
			# 10 
			$display("ADD complete with answer: %b, expected %b", alu_result, in_a+in_b);
			
			// SUB Check
			control_opcode <= 5'b0001;		// check OR operation
			# 10 
			$display("SUB complete with answer: %b, expected %b", alu_result, in_a-in_b);
			
			// MUL Check
			control_opcode <= 5'b0010;		// check NOT operation 
			# 10
			$display("MUL complete with answer: %b, expected %b", alu_result, in_a*in_b);
			
			// DIV Check
			control_opcode <= 5'b0011;		// check NEG operation 
			# 10
			$display("DIV complete with answer: %b, expected %b", alu_result, in_a/in_b);
			
			// SHR Check
			control_opcode <= 5'b0100; 		// check ADD operation 
			# 10
			$display("SHR complete with answer: %b, expected %b", alu_result, in_a>>1);
			
			
			// SHRA Check
			control_opcode <= 5'b0101;		// check SUB operation
			# 10 
			$display("SHRA complete with answer: %b, expected %b", alu_result, in_a+in_b);
			
			
			// SHL Check
			control_opcode <= 5'b0110;		// check MUL operation 
			# 10
			$display("SHL complete with answer: %b, expected %b", alu_result, in_a+in_b);
			
			// ROR Check
			control_opcode <= 5'b0111;		// check DIV operation
			# 10
			$display("ROR complete with answer: %b, expected %b", alu_result, in_a+in_b);
			
			
			// ROL Check
			control_opcode <= 5'b1000;		// check SHR operation
			# 10
			$display("ROL complete with answer: %b, expected %b", alu_result, in_a+in_b);
			
			// AND Check
			control_opcode <= 5'b1001;		// check SHRA operation
			# 10 
			$display("AND complete with answer: %b, expected %b", alu_result, in_a&in_b);
			
			// OR Check
			control_opcode <= 5'b1010;		// check SHL operation
			# 10 
			$display("OR complete with answer: %b, expected %b", alu_result, in_a|in_b);
			
			// NEG Check
			control_opcode <= 5'b1011;		// check ROR operation
			# 10 
			$display("NEG complete with answer: %b, expected %b", alu_result, -in_a);
			
			// NOT Check
			control_opcode <= 5'b1100;		// check ROL operation
			# 10 
			$display("NOT complete with answer: %b, expected %b", alu_result, !in_a);
			$finish;
		end 
		
endmodule 