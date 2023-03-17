module bus (input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, hiout, loout,zhighout, zlowout, pcout, mdrout, in_portout, cout,  input[31:0] busMuxIn_R0, busMuxIn_R1, busMuxIn_R2, busMuxIn_R3, busMuxIn_R4, busMuxIn_R5, busMuxIn_R6, busMuxIn_R7, busMuxIn_R8, busMuxIn_R9, 
				busMuxIn_R10, busMuxIn_R11, busMuxIn_R12, busMuxIn_R13, busMuxIn_R14, busMuxIn_R15, busMuxIn_HI, busMuxIn_LO, busMuxIn_Zhi, 
				busMuxIn_Zlo, busMuxIn_PC, busMuxIn_MDR, busMuxIn_In_Port, c_sign_extended, output [31:0] busMuxOut);

wire [4:0] select;

				
encoder bus_Encoder(.r0out(R0out), .r1out(R1out), .r2out(R2out), .r3out(R3out), .r4out(R4out), .r5out(R5out), .r6out(R6out), .r7out(R7out), .r8out(R8out), .r9out(R9out), .r10out(R10out), .r11out(R11out), .r12out(R12out), .r13out(R13out), .r14out(R14out), .r15out(R15out), .HIout(hiout), .LOout(loout), .Zhighout(zhighout), .Zlowout(zlowout), .PCout(pcout), .MDRout(mdrout), .In_Portout(in_portout), .Cout(cout), .S(select));


busMux bus_Mux (.S(select), .BusMuxIn_R0(busMuxIn_R0), .BusMuxIn_R1(busMuxIn_R1), .BusMuxIn_R2(busMuxIn_R2), .BusMuxIn_R3(busMuxIn_R3), .BusMuxIn_R4(busMuxIn_R4), .BusMuxIn_R5(busMuxIn_R5), .BusMuxIn_R6(busMuxIn_R6), .BusMuxIn_R7(busMuxIn_R7), .BusMuxIn_R8(busMuxIn_R8), .BusMuxIn_R9(busMuxIn_R9), 
						.BusMuxIn_R10(busMuxIn_R10), .BusMuxIn_R11(busMuxIn_R11), .BusMuxIn_R12(busMuxIn_R12), .BusMuxIn_R13(busMuxIn_R13), .BusMuxIn_R14(busMuxIn_R), .BusMuxIn_R15(busMuxIn_R15), .BusMuxIn_HI(busMuxIn_HI), .BusMuxIn_LO(busMuxIn_LO), .BusMuxIn_Zhi(busMuxIn_Zhi), .BusMuxIn_Zlo(busMuxIn_Zlo), .BusMuxIn_PC(busMuxIn_PC), .BusMuxIn_MDR(busMuxIn_MDR), .BusMuxIn_In_Port(busMuxIn_In_Port), .C_sign_extended(c_sign_extended), .BusMuxOut(busMuxOut));

						

endmodule