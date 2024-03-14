`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: tflop
//////////////////////////////////////////////////////////////////////////////////


module tflop(
    input clk,
    input rst,
    input logic T,
    output logic Q
    );
    
    logic Qnot;
    always_ff @(negedge clk or posedge rst) begin
        if(rst) begin
            Q <= 1'b0;           
        end
        else begin
            if(T) begin
                Q <= ~Q;
            end
        end
        
    end
endmodule
