`timescale 1ns / 1ps
`default_nettype none

module eight_bit_ALU(input wire [7:0] a,b, input wire [1:0] sel, input wire cin,output wire [7:0] result, output wire cout );

wire [6:0] carry;

one_bit_ALU alu0(a[0],b[0], cin, sel,result[0], carry[0]);
one_bit_ALU alu1(a[1],b[1], carry[0], sel,result[1], carry[1]);
one_bit_ALU alu2(a[2],b[2], carry[1], sel,result[2], carry[2]);
one_bit_ALU alu3(a[3],b[3], carry[2], sel,result[3], carry[3]);
one_bit_ALU alu4(a[4],b[4], carry[3], sel,result[4], carry[4]);
one_bit_ALU alu5(a[5],b[5], carry[4], sel,result[5], carry[5]);
one_bit_ALU alu6(a[6],b[6], carry[5], sel,result[6], carry[6]);
one_bit_ALU alu7(a[7],b[7], carry[6], sel,result[7], cout);

endmodule
