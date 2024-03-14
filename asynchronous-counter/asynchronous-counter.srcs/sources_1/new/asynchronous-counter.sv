`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: asynchronous-counter
//////////////////////////////////////////////////////////////////////////////////


module asynchronouscounter(
    input clk,
    input rst,
    output logic Q0,
    output logic Q1, 
    output logic Q2
    );
    
    dff FF0(.clk(clk), .rst(rst), .Q(Q0));
    dff FF1(.clk(~Q0), .rst(rst), .Q(Q1));
    dff FF2(.clk(~Q1), .rst(rst), .Q(Q2));
endmodule
