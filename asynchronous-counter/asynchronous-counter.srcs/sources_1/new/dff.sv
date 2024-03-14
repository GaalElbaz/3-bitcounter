`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: dff
//////////////////////////////////////////////////////////////////////////////////


module dff( 
    input clk,
    input rst,
    output logic Q
    );
    
    logic Qnot;
    always_ff @(posedge clk or posedge rst) begin
        if(rst) begin
            Q <= 1'b0;
            Qnot <= 1'b1;
        end
        else begin
            Q <= Qnot;
            Qnot <= ~Qnot;
        end
    end
endmodule
