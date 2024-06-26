timescale lns/lps
module bcd_counter(input clk, clr, output reg[3:0] count);
  reg [3:0] t;
  always @ (posedge clk) begin
    if (clr)
      begin
        t <= 4'b0000;
        count <= 4'b0000;
      end
    else
      begin
        t <= t+1;
        if (t == 4'b1001)
          begin
            t <= 4'b0000;
          end
        count  <= t;
      end
  end
endmodule
