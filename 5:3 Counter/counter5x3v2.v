`timescale 1ns / 1ps
module main2(cout,carry,sum, x0,x1,x2,x3,x4);
    output cout,carry,sum;
    input x0,x1,x2,x3,x4;

	wire w1,w2,w3,w4,w5,w6,w7,w8,w9;

	xor(w1,x2,x3);
	xor(w2,w1,x4);
	xor(w3,x0,x1);
	not(w4,w2);
	mux m1(sum,w2,w4,w3);

	and(w5,x2,x3);
	and(cout,w5,x4);

	not(w6,sum);
	mux m2(w7, w6, sum,x1);
	mux m2(carry, w7, x1, w3);

module mux(o, a,b,s);
    output o;
    input a,b,s;

	assign o = s?b:a;


endmodule
