// 4x1 Mux
module mux4_1(x,s,y);
input [3:0]x;
input [1:0]s;
output reg y;

always@(*)begin
case(s)
2'b00 : y =x[0];
2'b01 : y =x[1];
2'b10 : y =x[2];
2'b11 : y =x[3];
default : y = 2'b00;
endcase
end
endmodule

//2x1 Mux 
module mux2_1(x,s,y);
input [1:0]x;
input s;
output y;

assign y = s?x[1]:x[0];

endmodule

// 8x1 Mux

module mux8_1(x,s,y);
input [7:0]x;
input [2:0]s;
output y;
wire y1,y2;

mux4_1 m0((x[3:0]),(s[1:0]),(y1));
mux4_1 m1((x[7:4]),(s[1:0]),(y2));
mux2_1 m2(({y1,y2}),(s[2]),(y));
endmodule
