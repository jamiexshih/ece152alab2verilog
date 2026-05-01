//The module "fourBitAdderFourByOne"...DESCRIPTION
module fourBitAdderFourByOne(a, b, cin, s, cout);
	//Input and Output Port Definitions
	input wire [3:0] a, b;
	input wire cin;
	output wire [3:0] s;
	output wire cout;
	
	//Carry Definitions
	wire c0;
	wire c1;
	wire c2;
	fullAdder FA0(
		.a(a[0]),
		.b(b[0]),
		.cin(cin),
		.s(s[0]),
		.cout(c0)
);
	fullAdder FA1(
		.a(a[1]),
		.b(b[1]),
		.cin(c0),
		.s(s[1]),
		.cout(c1)
);
	fullAdder FA2(
		.a(a[2]),
		.b(b[2]),
		.cin(c1),
		.s(s[2]),
		.cout(c2)
);
	fullAdder FA3(
		.a(a[3]),
		.b(b[3]),
		.cin(c2),
		.s(s[3]),
		.cout(cout)
);
endmodule
