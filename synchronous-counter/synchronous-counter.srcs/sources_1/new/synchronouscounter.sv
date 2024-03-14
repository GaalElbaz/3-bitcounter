`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: synchronouscounter
//////////////////////////////////////////////////////////////////////////////////


module synchronouscounter(
    input clk,
    input rst,
    output logic Q0,
    output logic Q1,
    output logic Q2
    );
    
  
    tflop FF0(.clk(clk), .rst(rst), .T(1),. Q(Q0));
    tflop FF1(.clk(clk), .rst(rst), .T(Q0),. Q(Q1));
    tflop FF2(.clk(clk), .rst(rst), .T(Q1 * Q0)  ,. Q(Q2));
endmodule
