`timescale 1ns/1ps

module encoder_tb;

//inputs and outputs
reg r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, r14out, r15out, HIout,  LOout, Zhighout, Zlowout, PCout, MDRout, In_Portout, Cout;
wire [4:0] s;

integer i;
//instantiate module for testing
//module encoder (r0out, r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out, r9out, r10out, r11out, r12out, r13out, r14out, r15out, HIout,  LOout, Zhighout, Zlowout, PCout, MDRout, In_Portout, Cout, S);

encoder encoder_test(.r0out(r0out), .r1out(r1out), .r2out(r2out), .r3out(r3out), .r4out(r4out), .r5out(r5out), .r6out(r6out), .r7out(r7out), .r8out(r8out), .r9out(r9out), .r10out(r10out), .r11out(r11out), .r12out(r12out), .r13out(r13out), .r14out(r14out), .r15out(r15out), .HIout(HIout), .LOout(LOout), .Zhighout(Zhighout), .Zlowout(Zlowout), .PCout(PCout), .MDRout(MDRout), .In_Portout(In_Portout), .Cout(Cout), .S(s));


//init beg block

initial begin
	for (i = 0; i <= 5; i = i+1) begin
	r0out <= 0;
	r1out <= 0;
	r2out <= 0;
	r3out <= 0;
	r4out <= 0;
	r5out <= 0; 

		case (i)
			0: 
				r0out = 1;
		
			1: 
				r1out = 1;
			 
			2: 
				r2out = 1;
			
			3: 
				r3out = 1;
		
			4: 
				r4out = 1;

			5: 
				r5out = 1;

			
		endcase
		
		#10
		
		$display ("Testing Rin = %d: Expecting: %d \n Recieved: %d", i, i, s); 
			
	end
	
end

endmodule