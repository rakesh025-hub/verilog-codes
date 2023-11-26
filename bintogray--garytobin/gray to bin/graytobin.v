

module graytobin(
input [3:0]bin,
output reg [3:0]gr);

always @(bin)
begin
gr[3]=bin[3];
gr[2]=gr[3]^bin[2];
gr[1]=gr[2]^bin[1];
gr[0]=gr[1]^bin[0];
end
endmodule 


/*
#here gr-out is binary code
----------------------or--------------
#at structure lavel(gate level)
module graytobin(
input [3:0]bin;
output [3:0]gr);
buf g3(gr[3],bin[3]);
xor g2(gr[2],bin[3],bin[2]);
xor g1(gr[1],gr[2],bin[1]);
xor g0(gr[0],gr[1],bin[0]);
endmodule
----------------or--------------
#using data flow
module graytobin(
input [3:0]bin;
output [3:0]gr);

assign gr[3]=bin[3];
assign gr[2]=bin[3]^bin[2];
assign gr[1]=bin[2]^bin[1];
assign gr[0]=bin[1]^bin[0];

endmodule

              */