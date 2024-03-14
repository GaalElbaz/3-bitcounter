`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb
//////////////////////////////////////////////////////////////////////////////////


module tb();

logic clk,rst,Q0,Q1,Q2;
asynchronouscounter threebitcount(.clk(clk), .rst(rst), .Q0(Q0), .Q1(Q1), .Q2(Q2));
always #25 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #1000;
    
end
endmodule
