//SW[4:0] data inputs
//SW[9] select signal

//LEDR[0] output display

module mux4to1(LEDR, SW);
    input [9:0] SW;
    output [9:0] LEDR;

    wire Connection1;
    wire Connection2;

    mux2to1a u1(
        .u(SW[0]),
        .v(SW[1]),
        .s0(SW[9]),
		  .out1(Connection1)
        );
		  
    mux2to1b u2(
	     .w(SW[2]),
		  .x(SW[3]),
		  .s0(SW[9]),
		  .out2(Connection2)
		  );
		  
    mux2to1c u3(
	     .temp1(Connection1),
		  .temp2(Connection2),
		  .s1(SW[8]),
		  .out3(LEDR[0])
		  );
endmodule

module mux2to1a(u, v, s0, out1);
    input u; //selected when s0 is 0, 
    input v; //selected when s0 is 1
    input s0; //select signal1
    output out1; //output
    assign out1 = s0 & v | ~s0 & u;
    // OR
    // assign m = s ? y : x;

endmodule

module mux2to1b(w, x, s0, out2);
    input w; //selected when s0 is 0, 
    input x; //selected when s is 1
    input s0; //select signal1
    output out2; //output
    assign out2 = s0 & x | ~s0 & w;
    // OR
    // assign m = s ? y : x;

endmodule

module mux2to1c(temp1, temp2, s1, out3);
    input temp1; //selected when s0 is 0, 
    input temp2; //selected when s0 is 1
    input s1; //select signal1
    output out3; //output
    assign out3 = s1 & temp2 | ~s1 & temp1;
    // OR
    // assign m = s ? y : x;
endmodule
