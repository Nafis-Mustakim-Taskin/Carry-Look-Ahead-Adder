`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 11:18:53 PM
// Design Name: 
// Module Name: tb_CLA_pt2
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

module tb_CLA_pt2;
reg [3:0] A;
reg [3:0] B;
reg cinput;
wire [3:0] Sum;
wire Cout;
//reg [7:0] i= 8'b0;
integer i;
carry_look_ahead_adder CLA2 (.A(A), .B(B),.cinput(cinput), .Sum(Sum), .Cout(Cout)); 
initial begin
A = 4'b0000; B = 4'b0000; cinput = 1'b0; #0.5;
for (i=0; i<512;i=i+1)
begin
{A,B,cinput} = {A,B,cinput}+ 1'b1;
#0.5;
end
$finish;
end
endmodule
