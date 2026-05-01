//This test bench is to test the 4-bit adder...
module addertb;
	reg [3:0] A, B;
	wire [3:0] S;
	reg cin;
	wire cout;

	fourBitAdderFourByOne f0(
		.a(A),
		.b(B),
		.cin(cin),
		.s(S),
		.cout(cout),
	);
	initial begin
		//minimum 
		A = 4'b0000;
		B = 4'b0000;
		cin = 0;
		//addition with carry
		A = 4'b0010;
		B = 4'b0011;
		cin = 1;
		//addition with no carry
		A = 4'b0010;
		B = 4'b0011;
		cin = 0;
		//max with carry
		A = 4'b1111;
		B = 4'b0000;
		cin = 1;
		//max with no carry
		A = 4'b1111;
		B = 4'b0000;
		cin = 0;
		//max with max, carry
		A = 4'b1111;
		B = 4'b1111;
		cin = 1;
		//max with max, no carry
		A = 4'b1111;
		B = 4'b1111;
		cin = 0;
	end
endmodule
