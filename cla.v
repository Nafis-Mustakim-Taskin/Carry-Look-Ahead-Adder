`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Teton Pvt. Limited
// Engineer: Nafis Mustakim
// 
// Create Date: 05/04/2021 11:09:29 PM
// Design Name: Carry Look Ahead Adder
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
    input [3:0] A,
    input [3:0] B,
    input cinput,
    output [3:0] Sum,
    output Cout
    );
    wire [3:0]P;
    wire [3:0]G;
    wire [3:0]C;
    wire Cin;
    assign Cin = cinput; 
    genvar i;
    generate
    for (i=0; i<4; i = i+1) 
    begin
    assign G[i] = A[i] & B[i];
    assign P[i] = (A[i] ^ B[i]);
    if (i==0)
        begin
            assign Sum[i] = P[i] ^ Cin;
            assign C[i] = G[i] | (P[i] & Cin);     
        end
    else
        begin
            assign Sum[i] = P[i] ^ C[i-1];
            assign C[i] = G[i] | (P[i] & C[i-1]);   
        end
    end
    endgenerate
    assign Cout = C[3];
endmodule
