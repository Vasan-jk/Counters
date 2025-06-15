`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    19:20:12 08/28/24
// Design Name:    
// Module Name:    app5_2
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
///////////////////////////////////////////////////////////////////////////////

module app5_2(s,ca,a,b,c,d,e);
input a,b,c,d,e;
output s,ca;
wire w1,w2;
assign w1= e|a|b;
assign w2= d|(a|b);
fa f1(c,w2,w1,s,ca);
endmodule
module fa(a,b,c, s,ca);
    input a,b,c;
    output s,ca;
		assign s=a^b^c;
		assign ca= (a&b)|(b&c)|(c&a);
endmodule


