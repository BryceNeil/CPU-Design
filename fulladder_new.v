module fulladder_new (input x, y, c_in, output reg c_out, s);

wire temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, tempC, tempOR1, tempOR2, tempS;
wire notx, noty, notc;


	//finding carry output
	and_new a1(.x(c_in), .y(y), .z(temp1));
	and_new a2(.x(x), .y(c_in), .z(temp2));	
	and_new a3(.x(x), .y(y), .z(temp3));
	
	or_new o1(.x(temp1), .y(temp2), .z(temp4));
	or_new o2(.x(temp3), .y(temp4), .z(tempC));
	
	
	//finding sum output
	
	//finding and storing negated values of x, y, c
	not_new n1(.x(x), .y(notx));
	not_new n2(.x(y), .y(noty));
	not_new n3(.x(c_in), .y(notc));
	
	//notx * noty * c (temp 6)
	and_new a4(.x(notx), .y(noty), .z(temp5));
	and_new a5(.x(temp5), .y(c_in), .z(temp6));
	
	//notx * y * notc (temp 8)
	and_new a6(.x(notx), .y(y), .z(temp7));
	and_new a7(.x(temp7), .y(notc), .z(temp8));
	
	//temp6 + temp8 (tempOR1)
	or_new o3(.x(temp6), .y(temp8), .z(tempOR1));
	
	//x * y * c (temp10)
	and_new a8(.x(x), .y(y), .z(temp9));	
	and_new a9(.x(temp9), .y(c_in), .z(temp10));
	
	//tempOR1 + temp10 (tempOR2)
	or_new o4(.x(tempOR1), .y(temp10), .z(tempOR2));
	
	//x * noty * notc (temp12
	and_new a10(.x(x), .y(noty), .z(temp11));
	and_new a11(.x(temp11), .y(notc), .z(temp12));
	
	//tempOR2 + temp12 (tempS)
	or_new o5(.x(tempOR2), .y(temp12), .z(tempS));

always @ (*) 
	begin

		c_out <= tempC;
		s <= tempS;

	end

endmodule