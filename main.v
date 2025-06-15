
`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    13:58:26 06/10/24
// Design Name:    
// Module Name:    main
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module main(cout,carry,sum, x0,x1,x2,x3,x4);
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
	or(w7,x3,x4);
	nand(w8,x3,x4);
	mux m2(w9,w7,w8,x2);

	mux m3(carry,w6,w9,w3);


endmodule
