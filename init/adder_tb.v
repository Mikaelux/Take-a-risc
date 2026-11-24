module adder_tb;
  reg  [3:0] a, b;
  wire [4:0] sum;
  adder dut(.a(a), .b(b), .sum(sum));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a = 3;  b = 4; #10;
    $display("%d + %d = %d", a, b, sum);
    a = 15; b = 1; #10;
    $display("%d + %d = %d", a, b, sum);
    $finish;
  end
endmodule
