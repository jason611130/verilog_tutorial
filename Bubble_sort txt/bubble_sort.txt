`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/08 18:02:37
// Design Name: 
// Module Name: Bubble_sort
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


module Bubble_sort(
input set,
input clk,
output [3:0] out1,out2,out3,out4,
output reg [3:0]temp1,temp2
);
reg [3:0] array[3:0];

integer i,j;
assign out1 = array[0];
assign out2 = array[1];
assign out3 = array[2];
assign out4 = array[3];
    always @(posedge set)begin
        array[0] = 4;
        array[1] = 3;
        array[2] = 2;
        array[3] = 1;
//            temp1 = 5;
//            temp2 = 5;
    end
    always @(posedge clk)begin
        for(i=0;i<4;i=i+1)begin
            for(j=0;j<3;j=j+1)begin
                if(array[j]>array[j+1])begin
                    temp1 = array[j];
                    temp2 = array[j+1];
                    array[j] = temp2;
                    array[j+1] = temp1;
                    
                end
//                    array[j] <= temp;        
            end
        end
    end

       
endmodule
