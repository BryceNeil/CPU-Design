//module dataPath(
//
////input are enables for registers and outputs are input for encoders
//input R0_input, R1_input, R2_input, R3_input, R4_input, R5_input, R6_input, R7_input, R8_input,
//		R9_input, R10_input, R11_input, R12_input, R13_input, R14_input, R15_input, 
//		R0_output, R1_output, R2_output, R3_output, R4_output, R5_output, R6_output, R7_output, R8_output, 
//		R9_output, R10_output, R11_output, R12_output, R13_output, R14_output, R15_output, Y_output,
//		
//input HI_input, LO_input, Z_Hi_input, Z_Lo_input, PC_input, MDR_input, MAR_input, IR_input, Y_input, Z_input,
//		HI_output, LO_output, PC_output, MDR_output, MDR_read, C_output, Inc_PC, Z_Lo_Select, Z_Hi_Select,
//		Z_Hi_output, Z_Lo_output, In_Port_output, clk, clr,
//
//input [31:0]
//input [4:0]ALU_Control,
//input [31:0]MDR_Data_input,
//output [31:0]R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, HI, LO, Y, Z_Lo, Z_Hi,
//output [63:0]Z_register
//);
//
//wire [31:0]bus;
//wire [31:0]IR_output;
//wire [31:0]Y_Data, X_Data;
//wire [63:0]Z_Data;
//wire [31:0]Z_High_Data, Z_Lo_Data;
//
//wire [31:0]bus_R0_input, bus_R1_input, bus_R2_input, bus_R3_input, bus_R4_input, bus_R5_input, bus_R6_input, 
//			  bus_R7_input, bus_R8_input, bus_R9_input, bus_R10_input, bus_R11_input, bus_R12_input, bus_R13_input, 
//			  bus_R14_input, bus_R15_input, bus_PC_input, bus_MAR_input, bus_MDR_input, bus_Hi_input, bus_Lo_input, 
//			  bus_Port_input, bus_C_input, bus_Y_input;
//			  
//			  
//wire [31:0] bus_Z_Hi_input, bus_Z_Lo_input;
//
//register (.BusMuxOut(), .clr(clr), .clk(clk), .Rin(R0_input), .BusMuxIn_R())
//
////Data moving out from registers, and to the bus
//register r0(clr, clk, bus, R0_in, bus_R0_input);
//register r1(clr, clk, bus, R1_in, bus_R1_input);
//register r2(clr, clk, bus, R2_in, bus_R2_input);
//register r3(clr, clk, bus, R3_in, bus_R3_input);
//register r4(clr, clk, bus, R4_in, bus_R4_input);
//register r5(clr, clk, bus, R5_in, bus_R5_input);
//register r6(clr, clk, bus, R6_in, bus_R6_input);
//register r7(clr, clk, bus, R7_in, bus_R7_input);
//register r8(clr, clk, bus, R8_in, bus_R8_input);
//register r9(clr, clk, bus, R9_in, bus_R9_input);
//register r10(clr, clk, bus, R10_in, bus_R10_input);
//register r11(clr, clk, bus, R11_in, bus_R11_input);
//register r12(clr, clk, bus, R12_in, bus_R12_input);
//register r13(clr, clk, bus, R13_in, bus_R13_input);
//register r14(clr, clk, bus, R14_in, bus_R14_input);
//register r15(clr, clk, bus, R15_in, bus_R15_input);
//
//
////Instruction Register
//register IR(clr, clk, bus, IR_input, IR_output);
//
////Program Counter
//PC_reg PC(clr, clk, inc_PC, PC_input, bus, Bus_PC_input); 
//
////MDR
//MDR_unit MDR_register(clr, clk, MDR_read, MDR_input, MDR_data_input, bus_MDR_input);
//
////MAR 
//register MAR(clr, clk, bus, MAR_input, bus_MAR_input);
//
////Other Registers
//register hi(clr, clk, bus, HI_input, bus_Hi_input);
//register lo(clr, clk, bus, Lo_input, bus_Lo_input);
//
//register z_hi(clr, clk, bus, Z_hi_input, bus_Z_Hi_input);
//register z_lo(clr, clk, bus, Z_Lo_input, bus_Z_Lo_input);
//
//register_64_bits bits_64_reg(Z_Input, Z_Lo_Select, Z_Hi_Select, clk, clr, Z_Data, Z_High_Data, Z_Lo_Data);
//
//register y(clr, clk, bus, Y_input, Y_Data);
//
//
//// ALU
//alu alu_instance(clk, Y_data, bus, ALU_Control, Z_data);
//
//// BUS
//bidirectionalBus my_bus(
//// signals for encoders
//R0_output, R1_output, R2_output, R3_output, R4_output, R5_output, R6_output, R7_output, R8_output, R9_output,
// R10_output, R11_output, R12_output, R13_output, R14_output, R15_output, Hi_output, Lo_output, Z_Hi_output, Z_Lo_output,
// PC_output,  MDR_output, In_Port_output, C_output, Y_output,
// 
//// inut for multiplexer
//bus_R0_input, bus_R1_input, bus_R2_input, bus_R3_input, bus_R4_input, bus_R5_input, bus_R6_input, 
//bus_R7_input, bus_R8_input, bus_R9_input, bus_R10_input, bus_R11_input, bus_R12_input, bus_R13_input, 
//bus_R14_input, bus_R15_input, bus_MDR_input, bus_Hi_input, bus_Lo_input, bus_Z_Hi_input, bus_Z_Lo_input, 
//bus_Port_input, bus_C_input, bus_Y_input, bus 
//);
//
//
//assign R0 = bus_R0_input;
//assign R1 = bus_R1_input;
//assign R2 = bus_R2_input;
//assign R3 = bus_R3_input;
//assign R4 = bus_R4_input;
//assign R5 = bus_R5_input;
//assign R6 = bus_R6_input;
//assign R7 = bus_R7_input;
//assign R8 = bus_R8_input;
//assign R9 = bus_R9_input;
//assign R10 = bus_R10_input;
//assign R11 = bus_R11_input;
//assign R12 = bus_R12_input;
//assign R13 = bus_R13_input;
//assign R14 = bus_R14_input;
//assign R15 = bus_R15_input;
//assign HI = bus_Hi_input;
//assign LO = bus_Lo_input;
//assign Y = Y_data;
//assign Z_Lo = bus_Z_Lo_input;
//assign Z_Hi = bus_Z_Hi_input;
//assign Z_register = Z_Data;
//
//
//endmodule
//
//
//
//
