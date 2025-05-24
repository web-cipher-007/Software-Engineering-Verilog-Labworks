module testbench;
  // Declare inputs as registers so we can change their values in the testbench
  reg [3:0] A, B;

  // Declare outputs as wires to receive results from the design module
  wire [3:0] diff;
  wire borrowOut;

  // Instantiate the BinarySubtractor module and connect signals
  // 'dut' stands for Device Under Test
  BinarySubtractor dut(A, B, diff, borrowOut);

  // Initial block runs once at the start of simulation
  initial begin
    // Create a waveform dump file to view simulation waveforms later (optional)
    $dumpfile("dump.vcd");
    $dumpvars(1);

    // Test case 1:
    A = 4'b0101; // Binary for decimal 5
    B = 4'b0110; // Binary for decimal 6
    #3;          // Wait for 3 time units to let the outputs settle
    // Display the values in binary format
    $display("A=%b, B=%b, diff=%b, borrowOut=%b", A, B, diff, borrowOut);

    // Test case 2:
    A = 4'b0110; // Binary for decimal 6
    B = 4'b1111; // Binary for decimal 15
    #3;          // Wait again for outputs to settle
    $display("A=%b, B=%b, diff=%b, borrowOut=%b", A, B, diff, borrowOut);
  end
endmodule
