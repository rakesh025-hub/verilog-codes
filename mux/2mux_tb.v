module mux_tb();
reg [1:0]in;
reg sel;
wire y;

mux  uut(in,sel,y);

initial
begin
$monitor($time,"in=%b,sel=%b,y=%b",in,sel,y);
#5; 
in=2'b01;
sel=1'b0;

#5; 
in=2'b11;
sel=1'b0;

#5; 
in=2'b10;
sel=1'b0;

#5; 
in=2'b00;
sel=1'b0;

#5; 
in=2'b01;
sel=1'b1;
#5; 
in=2'b01;
sel=1'b1;
#5; 
in=2'b01;
sel=1'b1;
#5; 
in=2'b00;
sel=1'b1;
end

endmodule