module testbench;
  // Declare inputs as registers because we'll assign values in the testbench
  reg [3:0] A, B;
  
  // Declare outputs as wires to observe results from the UnsignedAdder module
  wire [3:0] Sum;
  wire CarryOut;

  // Instantiate the UnsignedAdder module
  // 'dut' stands for Device Under Test - this is the module we're testing
  UnsignedAdder dut(A, B, Sum, CarryOut);

  // initial block runs once at the start of simulation
  initial begin
    // Set up waveform dump to file "dump.vcd" to view simulation waveforms later
    $dumpfile("dump.vcd");
    $dumpvars(1);

    // Test case 1: assign A=5 (binary 0101), B=6 (binary 0110)
    A = 4'b0101;
    B = 4'b0110;
    #3;  // wait for 3 time units to allow outputs to settle
    
    // Display the inputs and outputs in binary format
    $display("A=%b, B=%b, Sum=%b, CarryOut=%b", A, B, Sum, CarryOut);

    // Test case 2: assign A=6 (binary 0110), B=15 (binary 1111)
    A = 4'b0110;
    B = 4'b1111;
    #3;  // wait for 3 time units

    // Display the result of this addition
    $display("A=%b, B=%b, Sum=%b, CarryOut=%b", A, B, Sum, CarryOut);
  end
endmodule
