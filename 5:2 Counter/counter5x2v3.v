`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    10:31:54 11/15/24
// Design Name:    
// Module Name:    counter52a
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
module counter52a(s,c, x);
    output s,c;
    input [4:0] x;

	 or o1(w1,x[0],x[1]);
	 or o2(w2,x[2],w1);
	 or o3(w3,x[3],w1);
	 FA f1(s,c,x[4],w3,w2);

endmodule
