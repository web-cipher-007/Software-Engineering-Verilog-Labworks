module UnsignedAdder(
  input [3:0] A, 
  input [3:0] B,
  output [3:0] Sum,
  output CarryOut
);
  reg [3:0] sum_temp;
  reg carry_temp;

  always @(A,B) begin
    {carry_temp, sum_temp} = A + B;
  end

  assign Sum = sum_temp;
  assign CarryOut = carry_temp;
endmodule
