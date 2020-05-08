`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 16:36:48
// Design Name: 
// Module Name: project_tb
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
module project_tb;
reg clk=1;
reg [31:0] A[0:99][0:99];
reg [31:0] B[0:99][0:99];
reg [31:0] C[0:99][0:99];
reg[31:0] X;
reg[31:0] Y;
reg[31:0] Z;
reg[31:0] XT;
reg[31:0] YT;
integer i=0;
integer j=0;
integer a=0;
integer b=0;
wire [31:0] cout;

project uut(.clk(clk),.X(X),.Y(Y),.Z(Z),.XT(XT),.YT(YT),.cout(cout));
initial begin
for (i=0; i<100;i=i+1)
begin
  for(j=0;j<100;j=j+1)
  begin
    A[i][j]=i*j/100;
    B[i][j]=i*j/100;
    C[i][j]=i*j/100;
  end 
end
end


always begin
#1 clk=~clk;
for(a=0;a<100;a=a+1)
#1
begin
    #1
    for(b=0;b<100;b=b+1)
    begin
        X<=A[a][b];
        YT<=B[b][a];
        Y<=B[a][b];
        XT<=A[b][a];
        Z<=C[a][b];
    end
end
$finish;
end
endmodule
