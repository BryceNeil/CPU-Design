module datapath_new (
							//enables
							input r0in, r1in, r2in, r3in, r4in, r5in, r6in, r7in, r8in, r9in, r10in, r11in, r12in, r13in, r14in, r15in, 
									y_in, zhi_in, zlo_in, ir_in, pc_in, MDRin, Cin, hi_in, lo_in,

							//encoder busMux input signals
							input r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, 
									r14out, r15out, hiout, loout, zhighout, zlowout, pcout, mdrout, in_portout, cout,
							
							//ctrl signals
							input Read, clk, clr, busEnable,
							
							input [4:0]opcode,
							
							input [31:0] Mdatain);


//bus mux in wires to connect bus input to register outputs
wire [31:0] BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7, BusMuxIn_R8, BusMuxIn_R9, BusMuxIn_R10, 
				BusMuxIn_R11, BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15, BusMuxIn_hi, BusMuxIn_lo, BusMuxIn_zhi, BusMuxIn_zlo, BusMuxIn_ir, BusMuxIn_pc, BusMuxIn_MDR;
	
wire [31:0] BusMuxOut;

//bus 
	bus mybus (.R0out(r0out), .R1out(r1out), .R2out(r2out), .R3out(r3out), .R4out(r4out), .R5out(r5out), .R6out(r6out), .R7out(r7out), .R8out(r8out), .R9out(r9out), .R10out(r10out), .R11out(r11out), .R12out(r12out), .R13out(r13out), .R14out(r14out), .R15out(r15out), 
				.hiout(hiout), .loout(loout), .zhighout(zhighout), .zlowout(zlowout), .pcout(pcout), .mdrout(mdrout), .in_portout(in_portout), .cout(cout), .busMuxIn_R0(BusMuxIn_R0), .busMuxIn_R1(BusMuxIn_R1), 
				.busMuxIn_R2(BusMuxIn_R2), .busMuxIn_R3(BusMuxIn_R3), .busMuxIn_R4(BusMuxIn_R4), .busMuxIn_R5(BusMuxIn_R5), .busMuxIn_R6(BusMuxIn_R6), 
				.busMuxIn_R7(BusMuxIn_R7), .busMuxIn_R8(BusMuxIn_R8), .busMuxIn_R9(BusMuxIn_R9),.busMuxIn_R10(BusMuxIn_R10), .busMuxIn_R11(BusMuxIn_R11),
				.busMuxIn_R12(BusMuxIn_R12), .busMuxIn_R13(BusMuxIn_R13), .busMuxIn_R14(BusMuxIn_R14), .busMuxIn_R15(BusMuxIn_R15), 
				.busMuxIn_HI(BusMuxIn_hi), .busMuxIn_LO(BusMuxIn_lo), .busMuxIn_Zhi(BusMuxIn_zhi), .busMuxIn_Zlo(BusMuxIn_zlo), .busMuxIn_PC(BusMuxIn_pc), .busMuxIn_MDR(BusMuxIn_MDR), .busMuxOut(BusMuxOut));


				
			
			
//registers 0-15
	register r0(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r0in), .BusMuxIn_R(BusMuxIn_R0));
	register r1(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r1in), .BusMuxIn_R(BusMuxIn_R1));
	register r2(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r2in), .BusMuxIn_R(BusMuxIn_R2));
	register r3(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r3in), .BusMuxIn_R(BusMuxIn_R3));
	register r4(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r4in), .BusMuxIn_R(BusMuxIn_R4));
	register r5(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r5in), .BusMuxIn_R(BusMuxIn_R5));
	register r6(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r6in), .BusMuxIn_R(BusMuxIn_R6));
	register r7(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r7in), .BusMuxIn_R(BusMuxIn_R7));
	register r8(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r8in), .BusMuxIn_R(BusMuxIn_R8));
	register r9(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r9in), .BusMuxIn_R(BusMuxIn_R9));
	register r10(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r10in), .BusMuxIn_R(BusMuxIn_R10));
	register r11(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r11in), .BusMuxIn_R(BusMuxIn_R11));
	register r12(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r12in), .BusMuxIn_R(BusMuxIn_R12));
	register r13(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r13in), .BusMuxIn_R(BusMuxIn_R13));
	register r14(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r14in), .BusMuxIn_R(BusMuxIn_R14));
	register r15(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(r15in), .BusMuxIn_R(BusMuxIn_R15));


wire [31:0] y_to_alu;

wire [63:0] alu_to_z, z_to_hilo;


//hi and lo regs (z transfers to here)
	register hi(.BusMuxOut(z_to_hilo[63:32]), .clr(clr), .clk(clk), .Rin(hi_in), .BusMuxIn_R(BusMuxIn_hi));
	register lo(.BusMuxOut(z_to_hilo[31:0]), .clr(clr), .clk(clk), .Rin(lo_in), .BusMuxIn_R(BusMuxIn_lo));

//alu (with 2 inputs and one output) 
	alu alu_dp(.y_out(y_to_alu), .bus_mux_out(BusMuxOut), .ALU_control(opcode), .z_in(alu_to_z));
	
	//z reg -- on input load hi lo
		register z_hi(.BusMuxOut(alu_to_z[63:32]), .clr(clr), .clk(clk), .Rin(zhi_in), .BusMuxIn_R(z_to_hilo[63:32]));
		register z_lo(.BusMuxOut(alu_to_z[31:0]), .clr(clr), .clk(clk), .Rin(zlo_in), .BusMuxIn_R(z_to_hilo[31:0]));
		
	//y reg
		register y(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(y_in), .BusMuxIn_R(y_to_alu));

//ir and pc (incremented by 1 using ALU)
		register ir(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(ir_in), .BusMuxIn_R(BusMuxIn_ir));
		register pc(.BusMuxOut(BusMuxOut), .clr(clr), .clk(clk), .Rin(pc_in), .BusMuxIn_R(BusMuxIn_pc));

//mar (holds address of memory locations) 
//will make for the other phase



//MDR holds data read from/to be written to memory
	MDR_unit mymdr(.Mdatain(Mdatain), .BusMuxOut(BusMuxOut), .Read(Read), .clr(clr), .clk(clk), .MDRin(MDRin), .Q(BusMuxIn_MDR));


endmodule