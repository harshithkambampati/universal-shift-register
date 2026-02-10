`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2025 16:06:02
// Design Name: 
// Module Name: u_s_r
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


module u_s_r(
    input clk,
    input [1:0] mode,
    input [3:0]D,
    input S_in,
    output reg [3:0]Q
    );
    
    
    always @(posedge clk)
    begin
    case(mode)
        2'b00: 
        Q<= Q;
        2'b01:        
        Q<= {S_in,Q[3:1]};
        2'b10:
        Q<= {Q[2:0],S_in};
        2'b11:
        Q <= D;      
    endcase
    end
endmodule
