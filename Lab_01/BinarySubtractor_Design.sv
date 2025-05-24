module BinarySubtractor(
  input [3:0] A,        // 4-bit input A (minuend)
  input [3:0] B,        // 4-bit input B (subtrahend)
  output reg [3:0] diff,    // 4-bit output difference (A - B)
  output reg borrow_out      // borrow output flag (indicates if borrow occurred)
);

  reg borrow;           // Temporary borrow variable used during subtraction
  integer i;            // Loop variable for bit-by-bit subtraction

  // This always block triggers whenever inputs A or B change
  always @* begin
    borrow = 0;         // Initialize borrow to zero at start

    // Loop through each bit from least significant (0) to most significant (3)
    for (i = 0; i < 4; i = i + 1) begin
      // Calculate difference bit at position i:
      // XOR of A[i], B[i], and current borrow (full subtractor logic)
      diff[i] = A[i] ^ B[i] ^ borrow;

      // Calculate borrow for next bit:
      // Borrow occurs if A[i] is 0 and B[i] is 1, or borrow propagated from previous bit
      borrow = (~A[i] & B[i]) | ((~A[i] | B[i]) & borrow);
    end

    borrow_out = borrow;  // After all bits, output the final borrow flag
  end

endmodule
