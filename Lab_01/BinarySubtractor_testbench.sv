module testbench;
  reg [3:0] A, B;
  wire [3:0] diff;
  wire borrowOut;

  BinarySubtractor dut(A, B, diff, borrowOut);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A = 4'b0101; B = 4'b0110; #3;
    $display("A=%b, B=%b, diff=%b, borrowOut=%b", A, B, diff, borrowOut);

    A = 4'b0110; B = 4'b1111; #3;
    $display("A=%b, B=%b, diff=%b, borrowOut=%b", A, B, diff, borrowOut);
  end
endmodule
