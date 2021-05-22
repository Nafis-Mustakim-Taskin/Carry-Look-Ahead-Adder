`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nafis Mustakim
// 
// Create Date: 05/09/2021 05:44:30 PM
// Design Name: 
// Module Name: fa_csa
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fa_csa(
    input a,
    input b,
    input c_in,
    output sum,
    output c_output
    );
    wire p,g;
    assign p = a ^ b;
    assign g = a & b;
    assign sum = p ^ c_in;
    assign c_output = (p & c_in) | g;
endmodule
