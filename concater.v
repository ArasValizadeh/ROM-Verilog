`include "./myMux.v"
`include "./myAlu.v"
`include "./myRom.v"



module concater (
    input [4:0] addressRom1 ,
    input [1:0] addressRom2 ,
    input [1:0] addressRom3 , 
    input [1:0] addressRom4 ,
    input [1:0] addressRom5 ,
    input [2:0] addressRom6 ,
    output reg [31:0] result
);
wire [31:0] khorojiRom2 ;
wire [31:0] khorojiRom3 ;
wire [31:0] khorojiRom4 ;
wire [31:0] khorojiRom5 ;
wire [31:0] khorojiRom6 ;
wire [5:0] khorojiRom1 ;
rom1 r1(addressRom1 , khorojiRom1 );
rom2 r2(addressRom2 , khorojiRom2 );
rom3 r3(addressRom3 , khorojiRom3 );
rom4 r4(addressRom4 , khorojiRom4 );
rom5 r5(addressRom5 , khorojiRom5 );
rom6 r6(addressRom6 , khorojiRom6 );
reg [31:0] savedRom6 ;
always @(*) begin
    savedRom6 <= khorojiRom6 ;
end
wire [31:0] khorojiMux1 ;
wire [31:0] khorojiMux2 ;
mux1 m1(khorojiRom2 , khorojiRom3 , khorojiRom1[5] , khorojiMux1 );
mux2 m2(khorojiRom4 , khorojiRom5 , khorojiRom1[4] , khorojiMux2 );
wire [31:0] khorojiAlu ;
wire carry_out ;
alu a1(khorojiRom1[3:0] , khorojiMux1 , khorojiMux2 , khorojiAlu , carry_out);
always @(*) begin
    if (carry_out == 1'b1) begin
        savedRom6[24] = savedRom6[24] + 1'b1;
    end
    result = {savedRom6[31:12],khorojiAlu[11:0]};
end
endmodule