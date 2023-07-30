module tb;
  reg [1:0]sr;
  reg clk, rst;
  wire Q, Qbar;
  
  sr_ff s1(sr, clk, rst, Q, Qbar);
  
  always #5 clk = ~clk;
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 1'b1;
    rst = 1'b1;
    #5;
    rst = 1'b0;
    repeat(10) begin
      sr = $random;
      #10;
    end
    #100 $finish;
  end
endmodule
