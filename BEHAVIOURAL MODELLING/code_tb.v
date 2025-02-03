module mux4_1_tb;
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg [2:0] sel;
wire y;
 mux4_1 DUT (i0,i1,i2,i3,i4,i5,i6,i7,sel,y);
initial begin 
$monitor (i0,i1,i2,i3,i4,i5,i6,i7,sel,y);
sel=3’b000;i7=0;i6=0;i5=0;i4=0;i3 = 0;i2 =0 ;i1 = 0;i0 = 1; #100;
sel=3’b001;i7=0;i6=0;i5=0;i4=0;i3 = 0;i2 = 0;i1 = 1;i0 = 0; #100;
sel=3'b010;i7=0;i6=0;i5=0;i4=0;i3 = 0;i2 = 1;i1 = 0;i0 = 0; #100;
sel=3'b011;i7=0;i6=0;i5=0;i4=0;i3 = 1;i2 = 0;i1 = 0;i0 = 0; #100;
sel=3'b100;i7=0;i6=0;i5=0;i4=1;i3 = 0;i2 = 0;i1 = 0;i0 = 0; #100;
sel=3'b101;i7=0;i6=0;i5=1;i4=0;i3 = 0;i2 = 0;i1 = 0;i0 = 0; #100;
sel=3'b110;i7=0;i6=1;i5=0;i4=0;i3 = 0;i2 = 0;i1 = 0;i0 = 0; #100;
sel=3'b111;i7=1;i6=0;i5=0;i4=0;i3 = 0;i2 = 0;i1 = 0;i0 = 0; #100;
end 
endmodule
