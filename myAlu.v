`include "./example.v"

module alu(
    input [3:0] opCode,
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] out,
    output reg carry_out
);
wire [11:0] result_out ;
wire carry ;
reg [11:0] complement_b ;
full_adder_3byte f1 (a[11:0] ,complement_b , result_out , carry);

always @(*) begin
    case(opCode)
        4'd1 : begin
            complement_b = b ;
            out = result_out ;
            carry_out = carry ; 
        end
        4'd3 : begin
            complement_b = ~b + 1;
            out = result_out;
            carry_out = carry ;
        end
        4'd4 : out = a & b;
        4'd8 : out = a | b;
        4'd10: out = (a < b) ? 32'b0 : 32'b1;
        4'd13: out = ~a;
        4'd15: out = ~(a | b);
        default: out = 32'hzzzzzzzz;
    endcase

    if (out < 0) out = -out;
end

endmodule
