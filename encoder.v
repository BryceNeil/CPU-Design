module encoder (r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, r14out, r15out, HIout,  LOout, Zhighout, Zlowout, PCout, MDRout, In_Portout, Cout, S);

	input wire r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, r14out, r15out;
	input wire HIout,  LOout, Zhighout, Zlowout, PCout, MDRout, In_Portout, Cout;
	output reg [4:0] S;
	
	always @ (*) begin
		if (r0out == 1)
			S = 0; 
		else if (r1out == 1)
			S = 1;
		else if (r2out == 1)
			S = 2;
		else if (r3out == 1)
			S = 3;
		else if (r4out == 1)
			S = 4;
		else if (r5out == 1)
			S = 5;
		else if (r6out == 1)
			S = 6;
		else if (r7out == 1)
			S = 7;
		else if (r8out == 1)
			S = 8;
		else if (r9out == 1)
			S = 9;
		else if (r10out == 1)
			S = 10;
		else if (r11out == 1)
			S = 11;
		else if (r12out == 1)
			S = 12;
		else if (r13out == 1)
			S = 13;
		else if (r14out == 1)
			S = 14;
		else if (r15out == 1)
			S = 15;
		else if (HIout == 1)
			S = 16;
		else if (LOout == 1)
			S = 17;
		else if (Zhighout == 1)
			S = 18;
		else if (Zlowout == 1)
			S = 19;
		else if (PCout == 1)
			S = 20;
		else if (MDRout == 1)
			S = 21;
		else if (In_Portout == 1)
			S = 22;
		else if (Cout == 1)
			S = 23;
		end
endmodule