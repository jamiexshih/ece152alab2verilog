module fullAdder(a, b, cin, s, cout);
	//Input and Output Port Definitions
	input wire a, b, cin;
	output wire s, cout;

	//Module Body
	assign s = (~a & ~b & cin) |
		         (~a & b & ~cin) |
		         (a & ~b & ~cin) |
		         (a & b & cin);
	assign cout = (a & b) |
			  (a & cin) |
			(b & cin);
endmodule
