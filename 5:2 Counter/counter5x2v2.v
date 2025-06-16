`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    10:05:12 11/15/24
// Design Name:    
// Module Name:    counter52
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
module counter52(s,c, x);
    output s,c;
    input [4:0] x;

	  and a1(w1,x[0],x[1]);
	  or o1(w2,x[2],w1);
	  or o2(w3,x[0],x[1],x[3]);
	  FA f1(s,c,x[4],w3,w2);
endmodule
