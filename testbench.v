module mytestbench;

reg [4:0] addressRom1;
reg [1:0] addressRom2;
reg [1:0] addressRom3;
reg [1:0] addressRom4;
reg [1:0] addressRom5;
reg [2:0] addressRom6;
wire [31:0] result;

concater c1 (
    addressRom1 ,
    addressRom2 , 
    addressRom3 , 
    addressRom4 , 
    addressRom5 , 
    addressRom6 , 
    result
);

always begin
  addressRom1 = $random;
  addressRom2 = $random;
  addressRom3 = $random;
  addressRom4 = $random;
  addressRom5 = $random;
  addressRom6 = $random;
  #1000;
  $display("addresRom1 : %h", addressRom1);
  $display("addresRom2 : %h", addressRom2);
  $display("addresRom3 : %h", addressRom3);
  $display("addresRom4 : %h", addressRom4);
  $display("addresRom5 : %h", addressRom5);
  $display("addresRom5 : %h", addressRom6);
  $display("result : %h", result);
end

endmodule
