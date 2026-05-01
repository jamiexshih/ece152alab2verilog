module twoBitAdder(a, b, cin, s, cout);
    input wire [1:0] a, b;
    input wire cin;
    output wire [1:0] s;
    output wire cout;

    wire c0;

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
        .cout(cout)
    );
endmodule
