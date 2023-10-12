module mux_tb();
reg [7:0]in;
reg [2:0]s;
wire y;
integer i;

mux uut(in,s,y);

initial
begin