`timescale 1ns / 1ps
`default_nettype none

module four_bit_ALU(input wire [3:0] a,b, input wire [1:0] sel, input wire cin,output wire [3:0] result, output wire cout );

wire [2:0] carry;

one_bit_ALU alu0(a[0],b[0], cin, sel,result[0], carry[0]);
one_bit_ALU alu1(a[1],b[1], carry[0], sel,result[1], carry[1]);
one_bit_ALU alu2(a[2],b[2], carry[1], sel,result[2], carry[2]);
one_bit_ALU alu3(a[3],b[3], carry[2], sel,result[3], cout);


endmodule
