`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 18:17:07
// Design Name: 
// Module Name: bubble_sort_tb
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

module bubble_sort_tb();
reg clk;
reg set;
wire [3:0]out1,out2,out3,out4,temp1,temp2;

Bubble_sort tb(
    .clk(clk),
    .set(set),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .out4(out4),
    .temp1(temp1),
    .temp2(temp2)
);

initial begin
    clk = 0;
    set = 0;
    #1 set = 1;
end
always #10 clk = ~clk;
endmodule
