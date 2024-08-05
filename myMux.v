module mux1(
    input [31:0] a ,
    input [31:0] b ,
    input select ,
    output [31:0] out 
);

assign out = select ? a : b ;

endmodule


module mux2(
    input [31:0] a ,
    input [31:0] b ,
    input select ,
    output [31:0] out 
);

assign out = select ? a : b ;

endmodule