`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2021 15:04:40
// Design Name: 
// Module Name: top
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


module two_tap_lfsr #(parameter tap_one = 2,
                      parameter tap_two = 4) (
                      input clk,
                      input [7:0] seed,
                      input enable,
                      input reset,
                      output reg [7:0] lfsr
                      );
           
  always @(posedge(clk)) begin
        if (reset) begin
            lfsr <= 8'b00000001;
        end
        else if (enable) begin
            lfsr <= seed;
        end
        else begin
            lfsr[6:0] <= lfsr >> 1;
            lfsr[7] <= lfsr[0] ^ lfsr[tap_one] ^ lfsr [tap_two];
        end
    end
endmodule
