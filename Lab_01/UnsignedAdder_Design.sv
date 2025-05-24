module UnsignedAdder(
  input [3:0] A,      // 4-bit input A
  input [3:0] B,      // 4-bit input B
  output [3:0] Sum,   // 4-bit output Sum (result of A + B)
  output CarryOut     // 1-bit output CarryOut (carry from addition)
);

  // Internal registers to hold the sum and carry temporarily
  reg [3:0] sum_temp;
  reg carry_temp;

  // Always block triggered whenever inputs A or B change
  always @(A, B) begin
    // Perform addition of A and B
    // The result is 5 bits: carry_temp is the MSB (carry), sum_temp is the lower 4 bits
    {carry_temp, sum_temp} = A + B;
  end

  // Assign the internal temp registers to output ports
  assign Sum = sum_temp;       // Assign lower 4 bits as sum output
  assign CarryOut = carry_temp; // Assign carry bit as CarryOut output

endmodule
