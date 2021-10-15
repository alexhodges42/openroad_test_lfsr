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
