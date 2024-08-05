module full_adder_3byte (
  input [11:0] A , 
  input [11:0] B ,
  output [11:0] Sum ,
  output Cout 
);

  // Generate G and P signals for each bit
  wire [11:0] G = A & B;
  wire [11:0] P = A ^ B;
  
  // Generate the carry for each bit
  wire [12:0] C_propagate;

  // Initial values for C_propagate and C_generate
  assign C_propagate[0] = 1'b0;

  // Carry-lookahead logic
  generate
    genvar i;
    for (i = 1; i < 13; i = i + 1) begin
      assign C_propagate[i] = (P[i-1] & C_propagate[i-1]) | G[i-1];
    end
  endgenerate

  // Generate the sum and carry-out
  assign Sum = A ^ B ^ C_propagate;
  assign Cout = C_propagate[12];

endmodule
