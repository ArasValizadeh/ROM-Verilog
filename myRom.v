module rom1(
    input [4:0] address ,
    output reg [5:0] data
);
always @(*) begin
    case(address)
    //add
    5'd0: data = 6'b000001 ; 
    5'd1 : data = 6'b010001 ; 
    5'd2 : data = 6'b100001 ; 
    5'd3 : data = 6'b110001 ; 
    //sub
    5'd4 : data = 6'b000011 ; 
    5'd5 : data = 6'b010011 ;
    5'd6 : data = 6'b100011 ;
    5'd7 : data = 6'b110011 ;
    //and  
    5'd8 : data = 6'b000100 ;
    5'd9 : data = 6'b010100 ;
    5'd10 : data = 6'b100100 ;
    5'd11 : data = 6'b110100 ;
    // or
    5'd12 : data = 6'b001000 ;
    5'd13 : data = 6'b011000 ;
    5'd14 : data = 6'b101000 ;
    5'd15 : data = 6'b111000 ;
    // slt
    5'd16 : data = 6'b001010 ;
    5'd17 : data = 6'b011010 ;
    5'd18 : data = 6'b101010 ;
    5'd19 : data = 6'b111010 ;
    // compliment A
    5'd20 : data = 6'b001101 ;
    5'd21 : data = 6'b011101 ;
    5'd22 : data = 6'b101101 ;
    5'd23 : data = 6'b111101 ;
    // nor 
    5'd24 : data = 6'b001111 ;
    5'd25 : data = 6'b011111 ;
    5'd26 : data = 6'b101111 ;
    5'd27 : data = 6'b111111 ;
    default : data = 32'h00000000 ;
    endcase
end

endmodule



module rom2 (
    input [1:0] address , 
    output reg [31:0] data
);

always @(*) begin
    case(address)
    2'd0 : data = 32'h0000_0077;
    2'd1 : data = 32'h0000_0095;
    2'd2 : data = 32'h0000_0107;
    2'd3 : data = 32'h0000_0021;
    default : data = 32'h00000000 ;
    endcase
end

endmodule

module rom3 (
    input [1:0] address , 
    output reg [31:0] data
);

always @(*) begin
    case(address)
    2'd0 : data = 32'h0000_0077;
    2'd1 : data = 32'h0000_0095;
    2'd2 : data = 32'h0000_0107;
    2'd3 : data = 32'h0000_0022;
    default : data = 32'h00000000 ;
    endcase
end

endmodule

module rom4 (
    input [1:0] address , 
    output reg [31:0] data
);

always @(*) begin
    case(address)
    2'd0 : data = 32'h0000_0077;
    2'd1 : data = 32'h0000_0095;
    2'd2 : data = 32'h0000_0103;
    2'd3 : data = 32'h0000_0021;
    default : data = 32'h00000000 ;
    endcase
end

endmodule

module rom5 (
    input [1:0] address , 
    output reg [31:0] data 
);

always @(*) begin
    case(address)
    2'd0 : data = 32'h0000_0077;
    2'd1 : data = 32'h0000_0095;
    2'd2 : data = 32'h0000_0103;
    2'd3 : data = 32'h0000_0022;
    default : data = 32'h00000000 ;
    endcase
end

endmodule


module rom6 (
    input [2:0] address , 
    output reg [31:0] data 
);

always @(*) begin 
    case(address)
    3'd0 : data = 32'h9724_3000;
    3'd1 : data = 32'h9824_3000;
    3'd2 : data = 32'h9924_3000;
    3'd3 : data = 32'h0024_3000;
    3'd4 : data = 32'h0124_3000;
    default : data = 32'h00000000 ;
    endcase
end


endmodule