module testbench;
  reg [3:0] A, B;
  wire [3:0] Sum;
  wire CarryOut;

  UnsignedAdder dut(A, B, Sum, CarryOut);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    A = 4'b0101; B = 4'b0110; #3;
    $display("A=%b, B=%b, Sum=%b, CarryOut=%b", A, B, Sum, CarryOut);

    A = 4'b0110; B = 4'b1111; #3;
    $display("A=%b, B=%b, Sum=%b, CarryOut=%b", A, B, Sum, CarryOut);
  end
endmodule