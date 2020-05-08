`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 16:35:56
// Design Name: 
// Module Name: project
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
module project(clk,X,Y,Z,XT,YT,cout);
input clk;
output [31:0] cout;
reg[31:0] cout;
input[31:0] X;
input[31:0] Y;
input[31:0] Z;
input[31:0] XT;
input[31:0] YT;
integer alpha=32412;
integer beta =2123;
initial begin
cout=Z;
end
always @(clk,X,XT,YT,Y,Z)
begin
 cout = (beta*Z)+(X*YT*alpha)+(XT*Y*alpha);
end
endmodule
