module bidirectionalBus (

	//regular 16 registers
	input wire R0_signal, R1_signal, R2_signal, R3_signal, R4_signal, R5_signal, R6_signal, R7_signal, R8_signal,
					R9_signal, R10_signal, R11_signal, R12_signal, R13_signal, R14_signal, R15_signal,
	 
	
	//special registers
	input wire Hi_signal,
	input wire Lo_signal,
	input wire Z_Hi_signal,
	input wire Z_Lo_signal,
	input wire PC_signal,
	input wire MDR_signal,
	input wire In_Port_signal,
	input wire C_signal,
	input wire encoder_Y,
	
	//multiplexer inputs
	input [31:0] R0_Bus_MUX_Inputs,
	input [31:0] R1_Bus_MUX_Inputs,
	input [31:0] R2_Bus_MUX_Inputs,
	input [31:0] R3_Bus_MUX_Inputs,
	input [31:0] R4_Bus_MUX_Inputs,
	input [31:0] R5_Bus_MUX_Inputs,
	input [31:0] R6_Bus_MUX_Inputs,
	input [31:0] R7_Bus_MUX_Inputs,
	input [31:0] R8_Bus_MUX_Inputs,
	input [31:0] R9_Bus_MUX_Inputs,
	input [31:0] R10_Bus_MUX_Inputs,
	input [31:0] R11_Bus_MUX_Inputs,
	input [31:0] R12_Bus_MUX_Inputs,
	input [31:0] R13_Bus_MUX_Inputs,
	input [31:0] R14_Bus_MUX_Inputs,
	input [31:0] R15_Bus_MUX_Inputs,
	input [31:0] Hi_Bus_MUX_Inputs,
	input [31:0] Lo_Bus_MUX_Inputs,
	input [31:0] Z_Hi_Bus_MUX_Inputs,
	input [31:0] Z_Lo_Bus_MUX_Inputs,
	input [31:0] PC_Bus_MUX_Inputs,
	input [31:0] MDR_Bus_MUX_Inputs,
	input [31:0] In_Port_Bus_MUX_Inputs,
	input [31:0] C_sign_extended_Bus_MUX_Inputs,
	input [31:0] Y_Bus_MUX_Inputs,
	
	
	output [31:0] Bus_MUX_Output_Datapath

);
// connects encoder to multiplexer
wire [4:0] connection;

encoder bus_encoder(

	.r0out(R0_signal),
	.r1out(R1_signal),
	.r2out(R2_signal),
	.r3out(R3_signal),
	.r4out(R4_signal),
	.r5out(R5_signal),
	.r6out(R6_signal),
	.r7out(R7_signal),
	.r8out(R8_signal),
	.r9out(R9_signal),
	.r10out(R10_signal),
	.r11out(R11_signal),
	.r12out(R12_signal),
	.r13out(R13_signal),
	.r14out(R14_signal),
	.r15out(R15_signal),
	.HIout(Hi_signal),
	.LOout(Lo_signal),
	.Zhighout(Z_Hi_signal),
	.Zlowout(Z_Lo_signal),
	.PCout(PC_signal),
	.MDRout(MDR_signal),
	.In_Portout(In_Port_signal),
	.Cout(C_signal),
	.S(encoder_Y)
	//.Encoder_Output(connection)
);

busMux bus_multiplexer(
	.S(connection),
	.BusMuxIn_R0(R0_Bus_MUX_Inputs),
	.BusMuxIn_R1(R1_Bus_MUX_Inputs),
	.BusMuxIn_R2(R2_Bus_MUX_Inputs),
	.BusMuxIn_R3(R3_Bus_MUX_Inputs),
	.BusMuxIn_R4(R4_Bus_MUX_Inputs),
	.BusMuxIn_R5(R5_Bus_MUX_Inputs),
	.BusMuxIn_R6(R6_Bus_MUX_Inputs),
	.BusMuxIn_R7(R7_Bus_MUX_Inputs),
	.BusMuxIn_R8(R8_Bus_MUX_Inputs),
	.BusMuxIn_R9(R9_Bus_MUX_Inputs),
	.BusMuxIn_R10(R10_Bus_MUX_Inputs),
	.BusMuxIn_R11(R11_Bus_MUX_Inputs),
	.BusMuxIn_R12(R12_Bus_MUX_Inputs),
	.BusMuxIn_R13(R13_Bus_MUX_Inputs),
	.BusMuxIn_R14(R14_Bus_MUX_Inputs),
	.BusMuxIn_R15(R15_Bus_MUX_Inputs),
	.BusMuxIn_HI(Hi_Bus_MUX_Inputs),
	.BusMuxIn_LO(Lo_Bus_MUX_Inputs),
	.BusMuxIn_Zhi(Z_Hi_Bus_MUX_Inputs),
	.BusMuxIn_Zlo(Z_Lo_Bus_MUX_Inputs),
	.BusMuxIn_PC(PC_Bus_MUX_Inputs),
	.BusMuxIn_MDR(MDR_Bus_MUX_Inputs),
	.BusMuxIn_In_Port(In_Port_Bus_MUX_Inputs),
	.C_sign_extended(C_sign_extended_Bus_MUX_Inputs),
	.BusMuxIn_Y(Y_Bus_MUX_Inputs),
	.BusMuxOut(Bus_MUX_Output_Datapath)
);

endmodule






	
	
	
	
	
	