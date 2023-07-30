module sr_ff(
  input [1:0]sr,
  input clk, rst,
  output reg Q, Qbar);
  always@(posedge clk) begin
    if(rst)
      Q <= 1'b0;
    else
      begin
        case(sr)
          0:Q <= Q;
          1:Q <= 0;
          2:Q <= 1;
          default:Q <= Q;
        endcase
      end
    Qbar <= ~Q;
  end
endmodule
