`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:19 04/08/2022 
// Design Name: 
// Module Name:    ram3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ram_3(data_out,data_in,addr,wr,cs);
parameter addr_size=4,word_size=8,memory_size=16;
input[addr_size-1:0]addr;
input[word_size-1:0]data_in;
input wr,cs;
output[word_size-1:0]data_out;
reg[word_size-1:0] mem[memory_size-1:0];
assign data_out=mem[addr];
always@(wr or cs)
if(wr) mem[addr]=data_in;
endmodule


