module BinarySubtractor(
  input [3:0] A,
  input [3:0] B,
  output reg [3:0] diff,
  output reg borrow_out
);
  reg borrow;
  integer i;

  always @* begin
    borrow = 0;
    for (i = 0; i < 4; i = i + 1) begin
      diff[i] = A[i] ^ B[i] ^ borrow;
      borrow = (~A[i] & B[i]) | ((~A[i] | B[i]) & borrow);
    end
    borrow_out = borrow;
  end
endmodule