module busMux (S, BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, 
					BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7, BusMuxIn_R8, BusMuxIn_R9, 
					BusMuxIn_R10, BusMuxIn_R11, BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15, 
					BusMuxIn_HI, BusMuxIn_LO, BusMuxIn_Zhi, BusMuxIn_Zlo, BusMuxIn_PC, BusMuxIn_MDR, BusMuxIn_In_Port, C_sign_extended, BusMuxIn_Y, BusMuxOut);

input wire [31:0] BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7, BusMuxIn_R8, BusMuxIn_R9, BusMuxIn_R10, BusMuxIn_R11, BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15;
input wire [31:0] BusMuxIn_HI, BusMuxIn_LO, BusMuxIn_Zhi, BusMuxIn_Zlo, BusMuxIn_PC, BusMuxIn_MDR, BusMuxIn_In_Port, C_sign_extended, BusMuxIn_Y;
input wire [4:0] S;
reg [31:0] temp;
output wire [31:0] BusMuxOut;


always @ (*) begin
	if (S == 0) 
		temp = BusMuxIn_R0;
	else if (S == 1) 
		temp = BusMuxIn_R1;
	else if (S == 2) 
		temp = BusMuxIn_R2;
	else if (S == 3) 
		temp = BusMuxIn_R3;
	else if (S == 4) 
		temp = BusMuxIn_R4;
	else if (S == 5) 
		temp = BusMuxIn_R5;
	else if (S == 6) 
		temp = BusMuxIn_R6;
	else if (S == 7) 
		temp = BusMuxIn_R7;
	else if (S == 8) 
		temp = BusMuxIn_R8;
	else if (S == 9) 
		temp = BusMuxIn_R9;
	else if (S == 10) 
		temp = BusMuxIn_R10;
	else if (S == 11) 
		temp = BusMuxIn_R11;
	else if (S == 12) 
		temp = BusMuxIn_R12;
	else if (S == 13) 
		temp = BusMuxIn_R13;
	else if (S == 14) 
		temp = BusMuxIn_R14;
	else if (S == 15) 
		temp = BusMuxIn_R15;
	else if (S == 16) 
		temp = BusMuxIn_HI;
	else if (S == 17) 
		temp = BusMuxIn_LO;
	else if (S == 18) 
		temp = BusMuxIn_Zhi;	
	else if (S == 19) 
		temp = BusMuxIn_Zlo;
	else if (S == 20) 
		temp = BusMuxIn_PC;
	else if (S == 21) 
		temp = BusMuxIn_MDR;
	else if (S == 22) 
		temp = BusMuxIn_In_Port;
	else if (S == 23) 
		temp = C_sign_extended;
	else if (S == 24) 
		temp = BusMuxIn_Y;
	end
	assign BusMuxOut = temp;
	
endmodule