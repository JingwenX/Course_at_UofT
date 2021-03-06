//SW[2:0] data inputs
//SW[9] select signal

//LEDR[0] output display

module HEX_decoder(HEX0, SW);
    input [9:0] SW;
    output [6:0] HEX0;

    decoder_HEX00 u0(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex00(HEX0[0])
        );
    decoder_HEX01 u1(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex01(HEX0[1])
        );
    decoder_HEX02 u2(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex02(HEX0[2])
        );
    decoder_HEX03 u3(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex03(HEX0[3])
        );
    decoder_HEX04 u4(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex04(HEX0[4])
        );
    decoder_HEX05 u5(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex05(HEX0[5])
        );
    decoder_HEX06 u6(
        .c3(SW[0]),
        .c2(SW[1]),
        .c1(SW[2]),
	.c0(SW[3]),
        .hex06(HEX0[6])
        );
endmodule


module decoder_HEX00(c3, c2, c1, c0, hex00);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex00;
	 
	 assign hex00 = ~c3 & c2 & ~c1 & ~c0 | ~c3 & ~c2 & ~c1 & c0 | c3 & c2 & ~ c1 & c0 | c3 & ~c2 & c1 & c0;
endmodule

module decoder_HEX01(c3, c2, c1, c0, hex01);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex01;
	 
	 assign hex01 = ~c3 & c2 & ~c1 & c0 | c3 & c1 & c0 | c2 & c1 & ~c0 | c3 & c2 & ~c0;
endmodule

module decoder_HEX02(c3, c2, c1, c0, hex02);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex02;
	 
	 assign hex02 = c3 & c2 & c1 | c3 & c2 & ~c0 | ~c3 & ~c2 & c1 & ~c0;
endmodule

module decoder_HEX03(c3, c2, c1, c0, hex03);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex03;
	 
	 assign hex03 = ~c2 & ~c1 & c0 | c2 & c1 & c0 | ~c3 & c2 & ~c1 & ~c0 | c3 & ~c2 & c1 & ~c0;
endmodule

module decoder_HEX04(c3, c2, c1, c0, hex04);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex04;
	 
	 assign hex04 = c3 & ~c2 & ~c1 & c0 | ~c3 & c2 & ~c1 | ~c3 & c0;
endmodule

module decoder_HEX05(c3, c2, c1, c0, hex05);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex05;
	 
	 assign hex05 = c3 & c2 & ~c1 & c0 | ~c3 & ~c2 & c0 | ~c3 & ~c2 & c1 | ~c3 & c1 & c0;
endmodule

module decoder_HEX06(c3, c2, c1, c0, hex06);
    input c3;
	 input c2;
	 input c1;
	 input c0;
	 output hex06;
	 
	 assign hex06 = ~c3 & ~c2 & ~c1 | ~c3 & c2 & c1 & c0 | c3 & c2 & ~ c1 & ~c0;
endmodule
