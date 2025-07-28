module mux8_1_tb;
reg [7:0]x;
reg [2:0]s;
wire y;

mux8_1 UUT(.x(x),.s(s),.y(y));

initial begin

x = 8'b1010_1101;
s =3'b000;#10;
s =3'b001;#10;
s =3'b010;#10;
s =3'b011;#10;
s =3'b100;#10;
s =3'b101;#10;
s =3'b110;#10;
s =3'b111;#10;

end
endmodule
