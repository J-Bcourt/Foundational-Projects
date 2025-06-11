`timescale 1ns / 1ps
`default_nettype none

module one_bit_ALU (
    input wire a, b,         
    input wire cin,          
    input wire [1:0] sel,    
    output wire result,      
    output wire cout         
);

    wire and_result, or_result, sum;

    assign and_result = a & b;
    assign or_result  = a | b;
    assign {cout, sum} = a + b + cin;

    assign result = (sel == 2'b00) ? and_result :
                    (sel == 2'b01) ? or_result  :
                    (sel == 2'b10) ? sum       :
                    1'b0; 

endmodule
