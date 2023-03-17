module not_new (input x, output y);

reg temp;

always @ (x) 
begin
	if (x == 1)
		temp = 0;
	else 
		temp = 1;
		
end

assign y = temp;

endmodule