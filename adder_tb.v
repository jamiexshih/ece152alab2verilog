//This test bench is to test the 4-bit adder...
`timescale 1ns/1ps

// This test bench is to test the 4-bit adder...
module addertb;

    reg [3:0] A, B;
    reg cin;
    wire [3:0] S;
    wire cout;

    // Instantiate your 4-bit adder (which uses fullAdder internally)
    fourBitAdder_FourByOne f0(
        .a(A),
        .b(B),
        .cin(cin),
        .s(S),
        .cout(cout)
    );

    // Monitor outputs
    initial begin
        $monitor("A=%b B=%b cin=%b | S=%b cout=%b", A, B, cin, S, cout);
    end
    
    initial begin
        // minimum 
        A = 4'b0000; B = 4'b0000; cin = 0; #10;

        // addition with carry
        A = 4'b0010; B = 4'b0011; cin = 1; #10;

        // addition with no carry
        A = 4'b0010; B = 4'b0011; cin = 0; #10;

        // max with carry
        A = 4'b1111; B = 4'b0000; cin = 1; #10;

        // max with no carry
        A = 4'b1111; B = 4'b0000; cin = 0; #10;

        // max with max, carry
        A = 4'b1111; B = 4'b1111; cin = 1; #10;

        // max with max, no carry
        A = 4'b1111; B = 4'b1111; cin = 0; #10;

        $stop;
    end

endmodule
/*module addertb;
	reg [3:0] A, B;
	wire [3:0] S;
	reg cin;
	wire cout;

	fourBitAdderFourByOne f0(
		.a(A),
		.b(B),
		.cin(cin),
		.s(S),
		.cout(cout)
	);

	//recommended for testing
	initial begin
	    $monitor("A=%b B=%b cin=%b | S=%b cout=%b", A, B, cin, S, cout);
	end
	
	initial begin
		//minimum 
		A = 4'b0000;
		B = 4'b0000;
		cin = 0;
		#10
		
		//addition with carry
		A = 4'b0010;
		B = 4'b0011;
		cin = 1;
		#10
		//addition with no carry
		A = 4'b0010;
		B = 4'b0011;
		cin = 0;
		#10
		//max with carry
		A = 4'b1111;
		B = 4'b0000;
		cin = 1;
		#10
		//max with no carry
		A = 4'b1111;
		B = 4'b0000;
		cin = 0;
		#10
		//max with max, carry
		A = 4'b1111;
		B = 4'b1111;
		cin = 1;
		#10
		//max with max, no carry
		A = 4'b1111;
		B = 4'b1111;
		cin = 0;
		#10
	end
endmodule
*/
